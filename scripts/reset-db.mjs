import fs from "node:fs";
import path from "node:path";
import Database from "better-sqlite3";

const rootDir = process.cwd();

const dbPath = path.join(rootDir, "data", "enciclopedia.sqlite");
const schemaPath = path.join(rootDir, "data", "schema.sql");
const seedPath = path.join(rootDir, "data", "seed.sql");

if (fs.existsSync(dbPath)) {
  fs.unlinkSync(dbPath);
}

const db = new Database(dbPath);

const schema = fs.readFileSync(schemaPath, "utf8");
const seed = fs.readFileSync(seedPath, "utf8");

db.exec(schema);
db.exec(seed);

const routeCount = db.prepare("SELECT COUNT(*) AS count FROM routes").get();
const lessonCount = db.prepare("SELECT COUNT(*) AS count FROM lessons").get();

db.close();

console.log("Base de datos creada correctamente.");
console.log(`Rutas: ${routeCount.count}`);
console.log(`Lecciones: ${lessonCount.count}`);
console.log(`Archivo: ${dbPath}`);