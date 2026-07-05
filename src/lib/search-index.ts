import { sitePath } from "./site-paths";
import {
  getAllBooks,
  getAllEvents,
  getAllGlossaryTerms,
  getAllLessons,
  getAllPassages,
  getAllPeople,
  getAllPlaces,
  getAllRoutes,
  getAllTopics,
  getBibleSearchVerses,
} from "./queries";

export type SearchIndexItem = {
  title: string;
  type: string;
  url: string;
  summary: string;
  searchText: string;
  typePriority: number;
  bookOrder: number;
  chapterNumber: number;
  verseNumber: number;
};

const typePriority: Record<string, number> = {
  Versículo: 1,
  Pasaje: 2,
  Lugar: 3,
  Glosario: 4,
  Libro: 5,
  Lección: 6,
  Evento: 7,
  Tema: 8,
  Personaje: 9,
  Ruta: 10,
  Sección: 11,
};

function getTypePriority(type: string) {
  return typePriority[type] ?? 99;
}

function joinSearchText(...parts: Array<string | number | null | undefined>) {
  return parts.filter(Boolean).join(" ");
}

export function buildSearchIndex(): SearchIndexItem[] {
  const rawBooks = getAllBooks().filter((book) => book.status !== "Borrador");

  const bookOrderBySlug = new Map(
    rawBooks.map((book) => [book.slug, book.order_number])
  );

  const sectionItems: SearchIndexItem[] = [
    {
      title: "Lecciones",
      type: "Sección",
      url: sitePath("/lecciones/"),
      summary: "Índice de lecciones publicadas de la Enciclopedia Bíblica Visual.",
      searchText: "Lecciones índice lecciones publicadas Enciclopedia Bíblica Visual",
      typePriority: getTypePriority("Sección"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    },
    {
      title: "Biblia",
      type: "Sección",
      url: sitePath("/biblia/"),
      summary: "Lectura bíblica por libros, capítulos y versículos.",
      searchText: "Biblia lectura bíblica libros capítulos versículos",
      typePriority: getTypePriority("Sección"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    },
    {
      title: "Libros",
      type: "Sección",
      url: sitePath("/libros/"),
      summary: "Directorio de libros bíblicos.",
      searchText: "Libros directorio libros bíblicos",
      typePriority: getTypePriority("Sección"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    },
    {
      title: "Pasajes",
      type: "Sección",
      url: sitePath("/pasajes/"),
      summary: "Pasajes bíblicos conectados con lecciones y eventos.",
      searchText: "Pasajes bíblicos conectados lecciones eventos",
      typePriority: getTypePriority("Sección"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    },
    {
      title: "Eventos",
      type: "Sección",
      url: sitePath("/eventos/"),
      summary: "Línea narrativa de eventos bíblicos.",
      searchText: "Eventos línea narrativa eventos bíblicos",
      typePriority: getTypePriority("Sección"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    },
    {
      title: "Temas",
      type: "Sección",
      url: sitePath("/temas/"),
      summary: "Conceptos y temas bíblicos principales.",
      searchText: "Temas conceptos bíblicos principales",
      typePriority: getTypePriority("Sección"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    },
    {
      title: "Personajes",
      type: "Sección",
      url: sitePath("/personajes/"),
      summary: "Directorio de personajes bíblicos.",
      searchText: "Personajes directorio personajes bíblicos",
      typePriority: getTypePriority("Sección"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    },
    {
      title: "Lugares",
      type: "Sección",
      url: sitePath("/lugares/"),
      summary: "Lugares bíblicos conectados con mapa y eventos.",
      searchText: "Lugares bíblicos mapa eventos",
      typePriority: getTypePriority("Sección"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    },
    {
      title: "Mapa",
      type: "Sección",
      url: sitePath("/mapa/"),
      summary: "Mapa bíblico visual con lugares registrados.",
      searchText: "Mapa bíblico visual lugares registrados",
      typePriority: getTypePriority("Sección"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    },
  ];

  const routes: SearchIndexItem[] = getAllRoutes()
    .filter((route) => route.status !== "Borrador")
    .map((route) => ({
      title: route.title,
      type: "Ruta",
      url: sitePath(`/rutas/${route.slug}/`),
      summary: route.description ?? "Ruta guiada.",
      searchText: joinSearchText(route.title, route.description),
      typePriority: getTypePriority("Ruta"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    }));

  const lessons: SearchIndexItem[] = getAllLessons()
    .filter((lesson) => lesson.status !== "Borrador")
    .map((lesson) => ({
      title: lesson.title,
      type: "Lección",
      url: sitePath(`/lecciones/${lesson.slug}/`),
      summary: lesson.main_idea ?? lesson.summary ?? "Lección bíblica.",
      searchText: joinSearchText(
        lesson.title,
        lesson.eyebrow,
        lesson.main_idea,
        lesson.summary,
        lesson.explanation,
        lesson.remember,
        lesson.application
      ),
      typePriority: getTypePriority("Lección"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    }));

  const books: SearchIndexItem[] = rawBooks.map((book) => ({
    title: book.name,
    type: "Libro",
    url: sitePath(`/libros/${book.slug}/`),
    summary: book.summary ?? book.category ?? "Libro bíblico.",
    searchText: joinSearchText(
      book.name,
      book.abbreviation,
      book.testament,
      book.category,
      book.genre,
      book.summary
    ),
    typePriority: getTypePriority("Libro"),
    bookOrder: book.order_number,
    chapterNumber: 999,
    verseNumber: 999,
  }));

  const passages: SearchIndexItem[] = getAllPassages()
    .filter((passage) => passage.status !== "Borrador")
    .map((passage) => ({
      title: passage.display_reference,
      type: "Pasaje",
      url: sitePath(`/pasajes/${passage.slug}/`),
      summary: passage.summary ?? `Pasaje en ${passage.book_name}.`,
      searchText: joinSearchText(
        passage.display_reference,
        passage.book_name,
        passage.summary
      ),
      typePriority: getTypePriority("Pasaje"),
      bookOrder: bookOrderBySlug.get(passage.book_slug) ?? 999,
      chapterNumber: passage.start_chapter,
      verseNumber: passage.start_verse ?? 999,
    }));

  const events: SearchIndexItem[] = getAllEvents()
    .filter((event) => event.status !== "Borrador")
    .map((event) => ({
      title: event.title,
      type: "Evento",
      url: sitePath(`/eventos/${event.slug}/`),
      summary: event.summary ?? event.biblical_period ?? "Evento bíblico.",
      searchText: joinSearchText(
        event.title,
        event.summary,
        event.description,
        event.biblical_period,
        event.approximate_date
      ),
      typePriority: getTypePriority("Evento"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    }));

  const topics: SearchIndexItem[] = getAllTopics()
    .filter((topic) => topic.status !== "Borrador")
    .map((topic) => ({
      title: topic.title,
      type: "Tema",
      url: sitePath(`/temas/${topic.slug}/`),
      summary: topic.definition ?? "Tema bíblico.",
      searchText: joinSearchText(topic.title, topic.definition),
      typePriority: getTypePriority("Tema"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    }));

  const people: SearchIndexItem[] = getAllPeople()
    .filter((person) => person.status !== "Borrador")
    .map((person) => ({
      title: person.name,
      type: "Personaje",
      url: sitePath(`/personajes/${person.slug}/`),
      summary: person.summary ?? "Personaje bíblico.",
      searchText: joinSearchText(person.name, person.summary),
      typePriority: getTypePriority("Personaje"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    }));

  const places: SearchIndexItem[] = getAllPlaces()
    .filter((place) => place.status !== "Borrador")
    .map((place) => ({
      title: place.name,
      type: "Lugar",
      url: sitePath(`/lugares/${place.slug}/`),
      summary: place.summary ?? place.place_type ?? "Lugar bíblico.",
      searchText: joinSearchText(
        place.name,
        place.place_type,
        place.summary,
        place.modern_equivalent,
        place.region
      ),
      typePriority: getTypePriority("Lugar"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    }));

  const glossary: SearchIndexItem[] = getAllGlossaryTerms()
    .filter((term) => term.status !== "Borrador")
    .map((term) => ({
      title: term.term,
      type: "Glosario",
      url: sitePath(`/glosario/${term.slug}/`),
      summary: term.definition ?? "Término del glosario.",
      searchText: joinSearchText(term.term, term.definition),
      typePriority: getTypePriority("Glosario"),
      bookOrder: 999,
      chapterNumber: 999,
      verseNumber: 999,
    }));

  const bibleVerses: SearchIndexItem[] = getBibleSearchVerses()
    .filter((verse) => verse.verse_text)
    .map((verse) => ({
      title: `${verse.book_name} ${verse.chapter_number}:${verse.verse_number}`,
      type: "Versículo",
      url: sitePath(
        `/biblia/${verse.book_slug}/${verse.chapter_number}/#v${verse.verse_number}`
      ),
      summary: verse.verse_text ?? "",
      searchText: joinSearchText(
        verse.book_name,
        verse.chapter_number,
        verse.verse_number,
        verse.verse_text
      ),
      typePriority: getTypePriority("Versículo"),
      bookOrder: bookOrderBySlug.get(verse.book_slug) ?? 999,
      chapterNumber: verse.chapter_number,
      verseNumber: verse.verse_number,
    }));

  return [
    ...sectionItems,
    ...routes,
    ...lessons,
    ...books,
    ...passages,
    ...events,
    ...topics,
    ...people,
    ...places,
    ...glossary,
    ...bibleVerses,
  ];
}