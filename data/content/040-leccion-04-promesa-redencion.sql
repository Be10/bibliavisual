DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-primera-promesa-redencion';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-primera-promesa-redencion';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-primera-promesa-redencion';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-primera-promesa-redencion';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-primera-promesa-redencion';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-primera-promesa-redencion';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-primera-promesa-redencion';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-primera-promesa-redencion';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-primera-promesa-redencion';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-primera-promesa-redencion';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-primera-promesa-redencion';

UPDATE lessons
SET
  title = 'La primera promesa de redención',
  slug = 'la-primera-promesa-de-redencion',
  eyebrow = 'Lección 4 de 20 · 7–10 minutos',
  main_idea = 'Después de la caída, Dios anunció una promesa de victoria sobre el mal que apunta hacia Cristo.',
  summary = 'Génesis 3:15 muestra que, aun después del pecado, Dios no abandonó a la humanidad, sino que anunció esperanza y redención.',
  explanation = 'Después de la desobediencia de Adán y Eva, Dios pronunció juicio sobre la serpiente, la mujer y el hombre. Sin embargo, en medio de ese juicio aparece una promesa de esperanza. Dios anunció que habría enemistad entre la serpiente y la descendencia de la mujer, y que esa descendencia heriría la cabeza de la serpiente. Esta promesa muestra que el pecado no tendría la última palabra. Desde el comienzo, Dios reveló que vencería el mal y prepararía redención. A la luz del resto de la Biblia, esta esperanza apunta finalmente a Jesús, quien vence el pecado, la muerte y al enemigo.',
  remember = 'Dios prometió victoria sobre el mal desde el comienzo de la historia humana.',
  application = 'Cuando vemos la gravedad del pecado, también debemos ver la fidelidad de Dios al prometer redención.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-primera-promesa-redencion';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-romanos-16', 'book-romanos', 16),
('chap-galatas-4', 'book-galatas', 4);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-romanos-16-20',
  'Romanos 16:20',
  'romanos-16-20',
  'book-romanos',
  16,
  20,
  16,
  20,
  'Dios aplastará a Satanás bajo los pies de su pueblo.',
  'Publicado básico'
),
(
  'pas-galatas-4-4',
  'Gálatas 4:4',
  'galatas-4-4',
  'book-galatas',
  4,
  4,
  4,
  4,
  'Dios envió a su Hijo nacido de mujer en el tiempo señalado.',
  'Publicado básico'
);

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
(
  'tem-promesa',
  'Promesa',
  'promesa',
  'Compromiso fiel de Dios por medio del cual anuncia y cumple su plan.',
  'Publicado básico'
);

INSERT OR IGNORE INTO places (
  id,
  name,
  slug,
  place_type,
  summary,
  latitude,
  longitude,
  map_zoom,
  geographical_certainty,
  status
) VALUES
(
  'lug-eden',
  'Edén',
  'eden',
  'Lugar / jardín',
  'Lugar asociado con la creación, la caída y la primera promesa de redención. Su ubicación exacta no puede determinarse con certeza.',
  NULL,
  NULL,
  NULL,
  'Desconocida',
  'Publicado básico'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-promesa-genesis-3-15', 'lec-primera-promesa-redencion', 'Génesis 3:15', 'Primera promesa de victoria sobre el mal.', 1),
('ref-promesa-romanos-16-20', 'lec-primera-promesa-redencion', 'Romanos 16:20', 'Dios promete aplastar a Satanás.', 2),
('ref-promesa-galatas-4-4', 'lec-primera-promesa-redencion', 'Gálatas 4:4', 'Cristo vino nacido de mujer en el tiempo señalado.', 3);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-promesa-1', 'lec-primera-promesa-redencion', 'Dios juzgó el pecado, pero también habló esperanza.', 1),
('pt-promesa-2', 'lec-primera-promesa-redencion', 'La serpiente no tendría la victoria final.', 2),
('pt-promesa-3', 'lec-primera-promesa-redencion', 'La descendencia de la mujer vencería al mal.', 3),
('pt-promesa-4', 'lec-primera-promesa-redencion', 'Esta promesa inicia una línea de esperanza que atraviesa toda la Biblia.', 4),
('pt-promesa-5', 'lec-primera-promesa-redencion', 'Jesús cumple la esperanza de victoria, redención y restauración.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-promesa-1', 'lec-primera-promesa-redencion', '¿Por qué Génesis 3:15 es una promesa de esperanza?', 1),
('q-promesa-2', 'lec-primera-promesa-redencion', '¿Qué enseña esta promesa sobre el carácter de Dios?', 2),
('q-promesa-3', 'lec-primera-promesa-redencion', '¿Cómo apunta esta promesa hacia Jesús?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-primera-promesa-redencion', 'book-genesis'),
('lec-primera-promesa-redencion', 'book-romanos'),
('lec-primera-promesa-redencion', 'book-galatas');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-primera-promesa-redencion', 'pas-genesis-3-15', 'principal', 1),
('lec-primera-promesa-redencion', 'pas-romanos-16-20', 'apoyo', 2),
('lec-primera-promesa-redencion', 'pas-galatas-4-4', 'apoyo', 3);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-primera-promesa-redencion', 'eve-promesa-redencion');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-primera-promesa-redencion', 'tem-promesa'),
('lec-primera-promesa-redencion', 'tem-redencion'),
('lec-primera-promesa-redencion', 'tem-mesias'),
('lec-primera-promesa-redencion', 'tem-pecado');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-primera-promesa-redencion', 'per-adan'),
('lec-primera-promesa-redencion', 'per-eva'),
('lec-primera-promesa-redencion', 'per-serpiente'),
('lec-primera-promesa-redencion', 'per-jesus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-primera-promesa-redencion', 'lug-eden');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-primera-promesa-redencion', 'glo-redencion'),
('lec-primera-promesa-redencion', 'glo-mesias'),
('lec-primera-promesa-redencion', 'glo-pecado');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-promesa-redencion', 'per-adan'),
('eve-promesa-redencion', 'per-eva'),
('eve-promesa-redencion', 'per-serpiente'),
('eve-promesa-redencion', 'per-jesus');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-promesa-redencion', 'tem-promesa'),
('eve-promesa-redencion', 'tem-redencion'),
('eve-promesa-redencion', 'tem-mesias'),
('eve-promesa-redencion', 'tem-pecado');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-promesa-redencion', 'lug-eden');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-promesa-redencion', 'book-genesis'),
('eve-promesa-redencion', 'book-romanos'),
('eve-promesa-redencion', 'book-galatas');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-promesa-redencion', 'pas-genesis-3-15', 'principal', 1),
('eve-promesa-redencion', 'pas-romanos-16-20', 'apoyo', 2),
('eve-promesa-redencion', 'pas-galatas-4-4', 'apoyo', 3);