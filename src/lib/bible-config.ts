export const SUPPORTED_LANGUAGE_CODES = ["es", "en"] as const;

export type SupportedLanguageCode =
  (typeof SUPPORTED_LANGUAGE_CODES)[number];

export type BibleLanguageConfig = {
  code: SupportedLanguageCode;
  name: string;
  nativeName: string;
  defaultBibleVersionId: string;
};

export const BIBLE_LANGUAGE_CONFIG: Record<
  SupportedLanguageCode,
  BibleLanguageConfig
> = {
  es: {
    code: "es",
    name: "Español",
    nativeName: "Español",
    defaultBibleVersionId: "rvr1960",
  },

  en: {
    code: "en",
    name: "Inglés",
    nativeName: "English",
    defaultBibleVersionId: "kjv",
  },
};

export const DEFAULT_LANGUAGE_CODE: SupportedLanguageCode = "es";

export const DEFAULT_BIBLE_VERSION_ID =
  BIBLE_LANGUAGE_CONFIG[DEFAULT_LANGUAGE_CODE].defaultBibleVersionId;

export const DEFAULT_BIBLE_VERSION_ABBREVIATION = "RVR1960";

export function isSupportedLanguageCode(
  value: string
): value is SupportedLanguageCode {
  return SUPPORTED_LANGUAGE_CODES.includes(
    value as SupportedLanguageCode
  );
}

export function getBibleLanguageConfig(
  languageCode: SupportedLanguageCode
): BibleLanguageConfig {
  return BIBLE_LANGUAGE_CONFIG[languageCode];
}

export function getDefaultBibleVersionId(
  languageCode: SupportedLanguageCode
): string {
  return BIBLE_LANGUAGE_CONFIG[languageCode].defaultBibleVersionId;
}