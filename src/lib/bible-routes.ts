import { sitePath } from "./site-paths";
import type { SupportedLanguageCode } from "./bible-config";

const BIBLE_SECTION_SEGMENTS: Record<
  SupportedLanguageCode,
  string
> = {
  es: "biblia",
  en: "bible",
};

function normalizeVersionId(versionId: string): string {
  return versionId.trim().toLowerCase();
}

function normalizeBookCode(bookCode: string): string {
  return bookCode.trim().toLowerCase();
}

export function getBibleRootPath(
  language: SupportedLanguageCode
): string {
  return sitePath(
    `/${language}/${BIBLE_SECTION_SEGMENTS[language]}/`
  );
}

export function getBibleVersionPath(
  language: SupportedLanguageCode,
  versionId: string
): string {
  return sitePath(
    `/${language}/${BIBLE_SECTION_SEGMENTS[language]}/${normalizeVersionId(versionId)}/`
  );
}

export function getBibleBookPath(
  language: SupportedLanguageCode,
  versionId: string,
  bookCode: string
): string {
  return sitePath(
    `/${language}/${BIBLE_SECTION_SEGMENTS[language]}/${normalizeVersionId(versionId)}/${normalizeBookCode(bookCode)}/`
  );
}

export function getBibleChapterPath(
  language: SupportedLanguageCode,
  versionId: string,
  bookCode: string,
  chapterNumber: number
): string {
  return sitePath(
    `/${language}/${BIBLE_SECTION_SEGMENTS[language]}/${normalizeVersionId(versionId)}/${normalizeBookCode(bookCode)}/${chapterNumber}/`
  );
}

export function getBibleVersePath(
  language: SupportedLanguageCode,
  versionId: string,
  bookCode: string,
  chapterNumber: number,
  verseNumber: number
): string {
  return `${getBibleChapterPath(
    language,
    versionId,
    bookCode,
    chapterNumber
  )}#v${verseNumber}`;
}