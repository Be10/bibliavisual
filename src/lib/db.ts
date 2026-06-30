import Database from "better-sqlite3";
import path from "node:path";

const dbPath = path.join(process.cwd(), "data", "enciclopedia.sqlite");

export const db = new Database(dbPath, {
  readonly: true,
});