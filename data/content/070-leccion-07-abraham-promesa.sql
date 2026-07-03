DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-abraham-y-promesa';

DELETE FROM event_passages
WHERE event_id = 'eve-llamado-abraham';

DELETE FROM event_books
WHERE event_id = 'eve-llamado-abraham';

DELETE FROM event_topics
WHERE event_id = 'eve-llamado-abraham';

DELETE FROM event_places
WHERE event_id = 'eve-llamado-abraham';

DELETE FROM event_people
WHERE event_id = 'eve-llamado-abraham';

UPDATE lessons
SET
  title = 'Abraham y la promesa',
  slug = 'abraham-y-la-promesa',
  eyebrow = 'Lección 7 de 20 · 7–10 minutos',
  main_idea = 'Dios llamó a Abraham por gracia y le prometió tierra, descendencia y bendición para todas las familias de la tierra.',
  summary = 'Después de Babel, Dios no abandona a las naciones: llama a Abraham y anuncia una promesa que abre una nueva etapa en la historia de la redención.',
  explanation = 'Luego de la dispersión de Babel, la historia bíblica se enfoca en un hombre llamado Abram. Dios lo llamó a salir de su tierra y le prometió hacer de él una gran nación, darle una tierra y bendecir por medio de él a todas las familias de la tierra. Abraham no aparece como héroe perfecto, sino como alguien llamado por la gracia de Dios y sostenido por la promesa divina. Esta promesa se convierte en una línea central de toda la Biblia: Dios formará un pueblo, preservará una descendencia y traerá bendición a las naciones. El Nuevo Testamento muestra que esta promesa apunta finalmente a Cristo, por medio de quien la bendición llega a judíos y gentiles.',
  remember = 'Dios inicia su plan con Abraham prometiendo bendición para todas las familias de la tierra.',
  application = 'La historia de Abraham nos llama a confiar en la palabra de Dios aun cuando no vemos todo el camino, y a recordar que la bendición recibida de Dios apunta a bendecir a otros.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-abraham-y-promesa';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-genesis-12', 'book-genesis', 12),
('chap-genesis-15', 'book-genesis', 15),
('chap-romanos-4', 'book-romanos', 4),
('chap-galatas-3', 'book-galatas', 3),
('chap-hebreos-11', 'book-hebreos', 11);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-genesis-12-1-3',
  'Génesis 12:1-3',
  'genesis-12-1-3',
  'book-genesis',
  12,
  1,
  12,
  3,
  'Dios llama a Abraham y promete hacer de él una gran nación y bendecir a todas las familias de la tierra.',
  'Publicado básico'
),
(
  'pas-genesis-15-1-6',
  'Génesis 15:1-6',
  'genesis-15-1-6',
  'book-genesis',
  15,
  1,
  15,
  6,
  'Dios reafirma su promesa a Abraham, y Abraham cree al Señor.',
  'Publicado básico'
),
(
  'pas-romanos-4-1-25',
  'Romanos 4:1-25',
  'romanos-4-1-25',
  'book-romanos',
  4,
  1,
  4,
  25,
  'Pablo presenta a Abraham como ejemplo de fe en la promesa de Dios.',
  'Publicado básico'
),
(
  'pas-galatas-3-7-9',
  'Gálatas 3:7-9',
  'galatas-3-7-9',
  'book-galatas',
  3,
  7,
  3,
  9,
  'La promesa dada a Abraham anticipa la bendición de las naciones por la fe.',
  'Publicado básico'
),
(
  'pas-hebreos-11-8-12',
  'Hebreos 11:8-12',
  'hebreos-11-8-12',
  'book-hebreos',
  11,
  8,
  11,
  12,
  'Abraham obedeció por fe al llamado de Dios y esperó el cumplimiento de la promesa.',
  'Publicado básico'
);

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
(
  'tem-promesa',
  'Promesa',
  'promesa',
  'Compromiso fiel de Dios por medio del cual anuncia y cumple su plan.',
  'Publicado básico'
),
(
  'tem-fe',
  'Fe',
  'fe',
  'Confianza en Dios y en su palabra, aun cuando el cumplimiento todavía no se ve por completo.',
  'Publicado básico'
),
(
  'tem-bendicion',
  'Bendición',
  'bendicion',
  'Favor de Dios que trae vida, bien y propósito conforme a su voluntad.',
  'Publicado básico'
),
(
  'tem-naciones',
  'Naciones',
  'naciones',
  'Pueblos de la tierra que Dios gobierna y que forman parte del alcance de su plan redentor.',
  'Publicado básico'
);

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
(
  'per-abraham',
  'Abraham',
  'abraham',
  'Patriarca llamado por Dios para recibir la promesa de tierra, descendencia y bendición para las naciones.',
  'Publicado básico'
),
(
  'per-sara',
  'Sara',
  'sara',
  'Esposa de Abraham y madre de Isaac, incluida en la historia de la promesa de Dios.',
  'Publicado básico'
);

INSERT OR IGNORE INTO places (
  id, name, slug, place_type, summary, latitude, longitude, map_zoom,
  geographical_certainty, status
) VALUES
(
  'lug-ur-caldeos',
  'Ur de los caldeos',
  'ur-de-los-caldeos',
  'Ciudad antigua',
  'Lugar asociado con el origen de Abraham antes de su viaje hacia la tierra que Dios le mostraría.',
  30.9625,
  46.1030,
  8,
  'Aproximada / debatida',
  'Publicado básico'
),
(
  'lug-haran',
  'Harán',
  'haran',
  'Ciudad antigua',
  'Lugar donde la familia de Abraham habitó antes de continuar hacia Canaán.',
  36.8650,
  39.0320,
  8,
  'Aproximada',
  'Publicado básico'
),
(
  'lug-canaan',
  'Canaán',
  'canaan',
  'Región',
  'Tierra prometida por Dios a Abraham y a su descendencia.',
  31.5000,
  35.0000,
  7,
  'Aproximada',
  'Publicado básico'
);

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
(
  'glo-abraham',
  'Abraham',
  'abraham',
  'Patriarca llamado por Dios y receptor de la promesa de bendición para las naciones.',
  'Publicado básico'
),
(
  'glo-promesa',
  'Promesa',
  'promesa',
  'Compromiso fiel de Dios que sostiene la historia de la redención.',
  'Publicado básico'
),
(
  'glo-fe',
  'Fe',
  'fe',
  'Confianza en Dios y en su palabra.',
  'Publicado básico'
),
(
  'glo-bendicion',
  'Bendición',
  'bendicion',
  'Favor de Dios que trae vida y propósito conforme a su plan.',
  'Publicado básico'
);

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-llamado-abraham',
  'Llamado de Abraham',
  'llamado-de-abraham',
  'Llamado / promesa',
  'Dios llama a Abraham y promete formar una gran nación y bendecir a todas las familias de la tierra.',
  'El llamado de Abraham marca una nueva etapa después de Babel. Dios escoge a Abraham por gracia y anuncia una promesa que avanzará hacia Israel, el Mesías y la bendición para las naciones.',
  'Patriarcas',
  'Después de Babel y antes de los patriarcas de Israel',
  7,
  'Aproximada',
  'Aproximada',
  1,
  1,
  'Publicado básico'
);

UPDATE events
SET
  title = 'Llamado de Abraham',
  slug = 'llamado-de-abraham',
  event_type = 'Llamado / promesa',
  summary = 'Dios llama a Abraham y promete formar una gran nación y bendecir a todas las familias de la tierra.',
  description = 'El llamado de Abraham marca una nueva etapa después de Babel. Dios escoge a Abraham por gracia y anuncia una promesa que avanzará hacia Israel, el Mesías y la bendición para las naciones.',
  biblical_period = 'Patriarcas',
  approximate_date = 'Después de Babel y antes de los patriarcas de Israel',
  chronological_order = 7,
  temporal_certainty = 'Aproximada',
  geographical_certainty = 'Aproximada',
  appears_on_timeline = 1,
  appears_on_map = 1,
  status = 'Publicado básico'
WHERE id = 'eve-llamado-abraham';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-abraham-promesa',
  'Abraham: tierra, descendencia y bendición',
  'abraham-tierra-descendencia-bendicion',
  'Infografía',
  'Recurso visual para mostrar las tres dimensiones principales de la promesa hecha a Abraham.',
  'Infografía sobre la promesa dada a Abraham: tierra, descendencia y bendición para las naciones.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-abraham-genesis-12-1-3', 'lec-abraham-y-promesa', 'Génesis 12:1-3', 'Dios llama a Abraham y anuncia la promesa principal.', 1),
('ref-abraham-genesis-15-1-6', 'lec-abraham-y-promesa', 'Génesis 15:1-6', 'Abraham cree al Señor en medio de la espera.', 2),
('ref-abraham-romanos-4-1-25', 'lec-abraham-y-promesa', 'Romanos 4:1-25', 'Pablo explica la fe de Abraham y la justicia recibida por fe.', 3),
('ref-abraham-galatas-3-7-9', 'lec-abraham-y-promesa', 'Gálatas 3:7-9', 'La promesa anticipa la bendición de las naciones.', 4),
('ref-abraham-hebreos-11-8-12', 'lec-abraham-y-promesa', 'Hebreos 11:8-12', 'Abraham obedece y espera por fe.', 5);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-abraham-1', 'lec-abraham-y-promesa', 'Después de Babel, Dios siguió avanzando su plan de bendición para las naciones.', 1),
('pt-abraham-2', 'lec-abraham-y-promesa', 'Dios llamó a Abraham por gracia, no porque Abraham hubiera construido su propio nombre.', 2),
('pt-abraham-3', 'lec-abraham-y-promesa', 'La promesa incluye tierra, descendencia y bendición.', 3),
('pt-abraham-4', 'lec-abraham-y-promesa', 'Abraham respondió por fe, aunque todavía no veía el cumplimiento completo.', 4),
('pt-abraham-5', 'lec-abraham-y-promesa', 'La promesa a Abraham apunta hacia Cristo y hacia la bendición de todas las naciones.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-abraham-1', 'lec-abraham-y-promesa', '¿Qué prometió Dios a Abraham?', 1),
('q-abraham-2', 'lec-abraham-y-promesa', '¿Cómo se conecta la promesa a Abraham con las naciones después de Babel?', 2),
('q-abraham-3', 'lec-abraham-y-promesa', '¿Qué nos enseña Abraham sobre confiar en Dios mientras esperamos?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-abraham-y-promesa', 'book-genesis'),
('lec-abraham-y-promesa', 'book-romanos'),
('lec-abraham-y-promesa', 'book-galatas'),
('lec-abraham-y-promesa', 'book-hebreos');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-abraham-y-promesa', 'pas-genesis-12-1-3', 'principal', 1),
('lec-abraham-y-promesa', 'pas-genesis-15-1-6', 'apoyo', 2),
('lec-abraham-y-promesa', 'pas-romanos-4-1-25', 'conexión doctrinal', 3),
('lec-abraham-y-promesa', 'pas-galatas-3-7-9', 'conexión con las naciones', 4),
('lec-abraham-y-promesa', 'pas-hebreos-11-8-12', 'ejemplo de fe', 5);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-abraham-y-promesa', 'eve-llamado-abraham');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-abraham-y-promesa', 'tem-promesa'),
('lec-abraham-y-promesa', 'tem-fe'),
('lec-abraham-y-promesa', 'tem-bendicion'),
('lec-abraham-y-promesa', 'tem-naciones'),
('lec-abraham-y-promesa', 'tem-redencion');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-abraham-y-promesa', 'per-abraham'),
('lec-abraham-y-promesa', 'per-sara');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-abraham-y-promesa', 'lug-ur-caldeos'),
('lec-abraham-y-promesa', 'lug-haran'),
('lec-abraham-y-promesa', 'lug-canaan');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-abraham-y-promesa', 'glo-abraham'),
('lec-abraham-y-promesa', 'glo-promesa'),
('lec-abraham-y-promesa', 'glo-fe'),
('lec-abraham-y-promesa', 'glo-bendicion');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-abraham-y-promesa', 'vis-abraham-promesa');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-llamado-abraham', 'per-abraham'),
('eve-llamado-abraham', 'per-sara');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-llamado-abraham', 'lug-ur-caldeos'),
('eve-llamado-abraham', 'lug-haran'),
('eve-llamado-abraham', 'lug-canaan');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-llamado-abraham', 'tem-promesa'),
('eve-llamado-abraham', 'tem-fe'),
('eve-llamado-abraham', 'tem-bendicion'),
('eve-llamado-abraham', 'tem-naciones'),
('eve-llamado-abraham', 'tem-redencion');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-llamado-abraham', 'book-genesis'),
('eve-llamado-abraham', 'book-romanos'),
('eve-llamado-abraham', 'book-galatas'),
('eve-llamado-abraham', 'book-hebreos');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-llamado-abraham', 'pas-genesis-12-1-3', 'principal', 1),
('eve-llamado-abraham', 'pas-genesis-15-1-6', 'apoyo', 2),
('eve-llamado-abraham', 'pas-galatas-3-7-9', 'conexión con las naciones', 3);