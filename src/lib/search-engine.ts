import type { SearchIndexItem } from "./search-index";

export type SearchResultItem = SearchIndexItem & {
  score: number;
};

export const SEARCH_FILTER_ORDER = [
  "Versículo",
  "Glosario",
  "Lugar",
  "Personaje",
  "Evento",
  "Tema",
  "Lección",
];

const TYPE_RANK: Record<string, number> = {
  Glosario: 1,
  Lugar: 2,
  Personaje: 3,
  Tema: 4,
  Evento: 5,
  Lección: 6,
  Libro: 7,
  Pasaje: 8,
  Versículo: 9,
  Ruta: 10,
  Sección: 11,
};

const ENTITY_TITLE_BOOST: Record<string, number> = {
  Glosario: 90,
  Lugar: 85,
  Personaje: 82,
  Tema: 78,
  Evento: 72,
  Lección: 66,
  Libro: 64,
  Pasaje: 58,
  Ruta: 52,
  Sección: 48,
  Versículo: 20,
};

export function normalizeSearchText(value: unknown) {
  return String(value ?? "")
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .toLowerCase()
    .trim();
}

function getTypeRank(type: string) {
  return TYPE_RANK[type] ?? 99;
}

function getEntityTitleBoost(type: string) {
  return ENTITY_TITLE_BOOST[type] ?? 0;
}

function getSearchWords(query: string) {
  return query.split(/\s+/).filter(Boolean);
}

function isPhraseSearch(query: string) {
  return getSearchWords(query).length > 1;
}

function isReferenceLikeSearch(query: string) {
  return /\d/.test(query) || /\b\d+\s*[a-záéíóúñ]+/i.test(query);
}

function hasExactPhrase(value: string, query: string) {
  return value.includes(query);
}

function hasAllWords(value: string, words: string[]) {
  return words.length > 0 && words.every((word) => value.includes(word));
}

export function scoreSearchItem(item: SearchIndexItem, rawQuery: string) {
  const query = normalizeSearchText(rawQuery);

  if (!query) return 0;

  const title = normalizeSearchText(item.title);
  const type = normalizeSearchText(item.type);
  const summary = normalizeSearchText(item.summary);
  const searchText = normalizeSearchText(item.searchText);

  const words = getSearchWords(query);
  const phraseSearch = isPhraseSearch(query);
  const referenceLikeSearch = isReferenceLikeSearch(query);

  let score = 0;

  /*
    Prioridad máxima para frases exactas en versículos.
    Ejemplo:
    “en el principio” debe mostrar primero:
    - Génesis 1:1
    - Juan 1:1
    antes que versículos que solo contienen “principio”.
  */
  if (
    item.type === "Versículo" &&
    phraseSearch &&
    (hasExactPhrase(summary, query) || hasExactPhrase(searchText, query))
  ) {
    score = 13000;
  } else if (title === query) {
    score = 10000 + getEntityTitleBoost(item.type);
  } else if (title.startsWith(query)) {
    score = 8500 + getEntityTitleBoost(item.type);
  } else if (title.includes(query)) {
    score = 6500 + getEntityTitleBoost(item.type);
  } else if (summary.includes(query)) {
    score = item.type === "Versículo"
      ? 6200
      : 3600 + getEntityTitleBoost(item.type);
  } else if (searchText.includes(query)) {
    score = item.type === "Versículo"
      ? 6000
      : 2200 + Math.min(getEntityTitleBoost(item.type), 40);
  }

  if (score === 0 && words.length > 1 && hasAllWords(title, words)) {
    score = 5600 + getEntityTitleBoost(item.type);
  }

  if (score === 0 && words.length > 1 && hasAllWords(summary, words)) {
    score = item.type === "Versículo" ? 4300 : 3000;
  }

  if (score === 0 && words.length > 1 && hasAllWords(searchText, words)) {
    score = item.type === "Versículo" ? 4000 : 2600;
  }

  if (score === 0 && type.includes(query)) {
    score = 1200;
  }

  /*
    Si la búsqueda no es frase ni referencia, evitamos que miles de versículos
    dominen resultados de entidades exactas como Jesús, Israel, Jordán, etc.
  */
  if (score > 0 && item.type === "Versículo") {
    if (phraseSearch || referenceLikeSearch) {
      score += 500;
    } else {
      score -= 700;
    }
  }

  return Math.max(score, 0);
}

export function compareSearchResults(a: SearchResultItem, b: SearchResultItem) {
  return (
    b.score - a.score ||
    getTypeRank(a.type) - getTypeRank(b.type) ||
    a.bookOrder - b.bookOrder ||
    a.chapterNumber - b.chapterNumber ||
    a.verseNumber - b.verseNumber ||
    a.title.localeCompare(b.title, "es")
  );
}

export function getSearchResults(
  items: SearchIndexItem[],
  rawQuery: string
): SearchResultItem[] {
  const query = normalizeSearchText(rawQuery);

  if (!query) return [];

  return items
    .map((item) => ({
      ...item,
      score: scoreSearchItem(item, query),
    }))
    .filter((item) => item.score > 0)
    .sort(compareSearchResults);
}

export function getSearchCounts(results: SearchResultItem[]) {
  return results.reduce<Record<string, number>>((acc, item) => {
    acc[item.type] = (acc[item.type] ?? 0) + 1;
    return acc;
  }, {});
}

export function getAvailableSearchFilters(results: SearchResultItem[]) {
  const counts = getSearchCounts(results);

  return SEARCH_FILTER_ORDER.filter((type) => counts[type]).map((type) => ({
    type,
    count: counts[type],
  }));
}

export function getFilteredSearchResults(
  results: SearchResultItem[],
  activeType: string
) {
  if (activeType === "Todos") {
    return results;
  }

  return results.filter((item) => item.type === activeType);
}

export function getDisplaySearchResults(
  results: SearchResultItem[],
  activeType: string,
  limit = 80
) {
  return getFilteredSearchResults(results, activeType).slice(0, limit);
}