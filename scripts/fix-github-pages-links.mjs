import fs from 'node:fs';
import path from 'node:path';

const root = process.cwd();
const srcDir = path.join(root, 'src');
const helperPath = path.join(srcDir, 'lib', 'site-paths.ts');

fs.mkdirSync(path.dirname(helperPath), { recursive: true });

fs.writeFileSync(
  helperPath,
  `export function sitePath(path: string): string {
  const base = import.meta.env.BASE_URL;

  if (!path.startsWith('/')) {
    path = \`/\${path}\`;
  }

  return \`\${base.replace(/\\/$/, '')}\${path}\`;
}
`,
);

function walk(dir) {
  return fs.readdirSync(dir, { withFileTypes: true }).flatMap((entry) => {
    const fullPath = path.join(dir, entry.name);

    if (entry.isDirectory()) {
      return walk(fullPath);
    }

    if (entry.isFile() && fullPath.endsWith('.astro')) {
      return [fullPath];
    }

    return [];
  });
}

function toPosix(value) {
  return value.split(path.sep).join('/');
}

function helperImportFor(filePath) {
  const relative = path.relative(path.dirname(filePath), helperPath).replace(/\.ts$/, '');
  const normalized = toPosix(relative);

  return normalized.startsWith('.') ? normalized : `./${normalized}`;
}

function protectScriptBlocks(content) {
  const blocks = [];

  const protectedContent = content.replace(
    /<script(?:\s[^>]*)?>[\s\S]*?<\/script>/g,
    (block) => {
      const token = `__SCRIPT_BLOCK_${blocks.length}__`;
      blocks.push(block);

      return token;
    },
  );

  return { protectedContent, blocks };
}

function restoreScriptBlocks(content, blocks) {
  return blocks.reduce((current, block, index) => {
    return current.replace(`__SCRIPT_BLOCK_${index}__`, block);
  }, content);
}

function addImport(content, filePath) {
  if (!content.includes('sitePath(') || content.includes('site-paths')) {
    return content;
  }

  const importLine = `import { sitePath } from "${helperImportFor(filePath)}";`;

  if (content.startsWith('---')) {
    return content.replace(/^---\r?\n/, `---\n${importLine}\n`);
  }

  return `---\n${importLine}\n---\n\n${content}`;
}

function fixAstroFile(filePath) {
  let content = fs.readFileSync(filePath, 'utf8');
  const original = content;

  const { protectedContent, blocks } = protectScriptBlocks(content);
  content = protectedContent;

  content = content.replace(/href="(\/[^"]*)"/g, (_match, url) => {
    return `href={sitePath(${JSON.stringify(url)})}`;
  });

  content = content.replace(/href=\{`(\/[^`]*)`\}/g, (_match, url) => {
    return `href={sitePath(\`${url}\`)}`;
  });

  content = content.replace(/url: "(\/[^"]*)"/g, (_match, url) => {
    return `url: sitePath(${JSON.stringify(url)})`;
  });

  content = content.replace(/url: `(\/[^`]*)`/g, (_match, url) => {
    return `url: sitePath(\`${url}\`)`;
  });

  content = restoreScriptBlocks(content, blocks);

  if (toPosix(path.relative(root, filePath)) === 'src/pages/mapa/index.astro') {
    content = content.replace(
      '  const markersBySlug = new Map<string, L.Marker>();',
      `  const markersBySlug = new Map<string, L.Marker>();

  const baseUrl = import.meta.env.BASE_URL;

  function clientSitePath(path: string): string {
    const cleanBase = baseUrl.replace(/\\/$/, "");
    const cleanPath = path.startsWith("/") ? path : \`/\${path}\`;

    return \`\${cleanBase}\${cleanPath}\`;
  }`,
    );

    content = content.replace(
      '`<li><a href="/eventos/${event.slug}/">${event.title}</a></li>`',
      '`<li><a href="${clientSitePath(`/eventos/${event.slug}/`)}">${event.title}</a></li>`',
    );

    content = content.replace(
      '<a href="/lugares/${place.slug}/">Ver lugar</a>',
      '<a href="${clientSitePath(`/lugares/${place.slug}/`)}">Ver lugar</a>',
    );
  }

  content = addImport(content, filePath);

  if (content !== original) {
    fs.writeFileSync(filePath, content);
    console.log(`Actualizado: ${toPosix(path.relative(root, filePath))}`);
  }
}

for (const filePath of walk(srcDir)) {
  fixAstroFile(filePath);
}