DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-babel-y-naciones';

DELETE FROM event_passages
WHERE event_id = 'eve-babel-naciones';

DELETE FROM event_books
WHERE event_id = 'eve-babel-naciones';

DELETE FROM event_topics
WHERE event_id = 'eve-babel-naciones';

DELETE FROM event_places
WHERE event_id = 'eve-babel-naciones';

DELETE FROM event_people
WHERE event_id = 'eve-babel-naciones';

UPDATE lessons
SET
  title = 'Babel y las naciones',
  slug = 'babel-y-las-naciones',
  eyebrow = 'Lección 6 de 20 · 7–10 minutos',
  main_idea = 'En Babel, la humanidad buscó hacerse un nombre sin Dios, pero Dios confundió las lenguas, dispersó a las naciones y siguió preparando su plan de bendición para todos los pueblos.',
  summary = 'Génesis 10–11 muestra cómo las naciones se desarrollan después del diluvio y cómo Babel revela el orgullo humano frente al propósito de Dios.',
  explanation = 'Después del diluvio, la humanidad volvió a mostrar el mismo problema del corazón: querer vivir para su propia gloria. En Babel, las personas quisieron construir una ciudad y una torre para hacerse un nombre y evitar ser dispersadas. Pero Dios había llamado a la humanidad a llenar la tierra. Al confundir las lenguas, Dios juzgó el orgullo humano, limitó una rebelión unificada y dispersó a los pueblos. Sin embargo, Babel no es el final de la historia. Dios no abandonó a las naciones. A continuación, la Biblia presentará el llamado de Abraham, por medio de quien Dios promete bendecir a todas las familias de la tierra. Más adelante, en Cristo, el evangelio reunirá personas de toda lengua, pueblo y nación.',
  remember = 'Dios resiste el orgullo humano, gobierna sobre las naciones y mantiene su propósito de bendecir a todos los pueblos por medio de su plan redentor.',
  application = 'Babel nos llama a revisar si buscamos nuestro propio nombre o la gloria de Dios, y nos anima a ver a las naciones como parte del propósito redentor del Señor.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-babel-y-naciones';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-genesis-10', 'book-genesis', 10),
('chap-genesis-11', 'book-genesis', 11),
('chap-genesis-12', 'book-genesis', 12),
('chap-hechos-2', 'book-hechos', 2),
('chap-apocalipsis-7', 'book-apocalipsis', 7);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-genesis-10-11',
  'Génesis 10–11',
  'genesis-10-11',
  'book-genesis',
  10,
  NULL,
  11,
  NULL,
  'Desarrollo de las naciones después del diluvio y relato de Babel.',
  'Publicado básico'
),
(
  'pas-genesis-11-1-9',
  'Génesis 11:1-9',
  'genesis-11-1-9',
  'book-genesis',
  11,
  1,
  11,
  9,
  'La humanidad edifica Babel para hacerse un nombre, y Dios confunde las lenguas y dispersa a los pueblos.',
  'Publicado básico'
),
(
  'pas-genesis-12-1-3',
  'Génesis 12:1-3',
  'genesis-12-1-3',
  'book-genesis',
  12,
  1,
  12,
  3,
  'Dios llama a Abraham y promete bendecir en él a todas las familias de la tierra.',
  'Publicado básico'
),
(
  'pas-hechos-2-1-11',
  'Hechos 2:1-11',
  'hechos-2-1-11',
  'book-hechos',
  2,
  1,
  2,
  11,
  'En Pentecostés, personas de muchas lenguas oyen las maravillas de Dios.',
  'Publicado básico'
),
(
  'pas-apocalipsis-7-9-10',
  'Apocalipsis 7:9-10',
  'apocalipsis-7-9-10',
  'book-apocalipsis',
  7,
  9,
  7,
  10,
  'Una multitud de todas las naciones adora delante de Dios y del Cordero.',
  'Publicado básico'
);

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
(
  'tem-naciones',
  'Naciones',
  'naciones',
  'Pueblos de la tierra que Dios gobierna y que forman parte del alcance de su plan redentor.',
  'Publicado básico'
),
(
  'tem-orgullo',
  'Orgullo',
  'orgullo',
  'Actitud del corazón humano que busca exaltarse a sí mismo en lugar de honrar a Dios.',
  'Publicado básico'
),
(
  'tem-juicio',
  'Juicio',
  'juicio',
  'Acción justa de Dios al confrontar y castigar el pecado.',
  'Publicado básico'
),
(
  'tem-pecado',
  'Pecado',
  'pecado',
  'Rebelión contra Dios que rompe la relación con Él y afecta toda la vida humana.',
  'Publicado básico'
),
(
  'tem-redencion',
  'Redención',
  'redencion',
  'Dios rescata y libera a su pueblo del pecado, la esclavitud y la muerte.',
  'Publicado básico'
);

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
(
  'per-humanidad-babel',
  'La humanidad en Babel',
  'humanidad-en-babel',
  'Grupo humano que, después del diluvio, buscó hacerse un nombre por medio de una ciudad y una torre.',
  'Publicado básico'
);

INSERT OR IGNORE INTO places (
  id, name, slug, place_type, summary, latitude, longitude, map_zoom,
  geographical_certainty, status
) VALUES
(
  'lug-babel-sinar',
  'Babel / Sinar',
  'babel-sinar',
  'Región / ciudad antigua',
  'Lugar asociado con el relato de la torre de Babel. La ubicación exacta se presenta con cautela, relacionada de forma general con la región de Sinar en Mesopotamia.',
  NULL,
  NULL,
  NULL,
  'Aproximada / debatida',
  'Publicado básico'
);

UPDATE places
SET
  name = 'Babel / Sinar',
  slug = 'babel-sinar',
  place_type = 'Región / ciudad antigua',
  summary = 'Lugar asociado con el relato de la torre de Babel. La ubicación exacta se presenta con cautela, relacionada de forma general con la región de Sinar en Mesopotamia.',
  latitude = NULL,
  longitude = NULL,
  map_zoom = NULL,
  geographical_certainty = 'Aproximada / debatida',
  status = 'Publicado básico'
WHERE id = 'lug-babel-sinar';

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
(
  'glo-babel',
  'Babel',
  'babel',
  'Ciudad asociada con el orgullo humano, la confusión de lenguas y la dispersión de los pueblos.',
  'Publicado básico'
),
(
  'glo-naciones',
  'Naciones',
  'naciones',
  'Pueblos y grupos humanos que aparecen en la historia bíblica bajo el gobierno soberano de Dios.',
  'Publicado básico'
),
(
  'glo-dispersion',
  'Dispersión',
  'dispersion',
  'Acción de ser esparcidos o enviados por la tierra; en Babel ocurre como respuesta de Dios al orgullo humano.',
  'Publicado básico'
),
(
  'glo-orgullo',
  'Orgullo',
  'orgullo',
  'Deseo de exaltarse a uno mismo por encima de la voluntad y la gloria de Dios.',
  'Publicado básico'
);

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-babel-naciones',
  'Babel y la dispersión de las naciones',
  'babel-y-la-dispersion-de-las-naciones',
  'Rebelión / juicio / dispersión',
  'La humanidad busca hacerse un nombre en Babel, pero Dios confunde las lenguas y dispersa a los pueblos.',
  'Babel muestra el orgullo humano después del diluvio y el gobierno soberano de Dios sobre las naciones. La dispersión prepara el escenario para la promesa a Abraham y para el alcance mundial del plan redentor.',
  'Orígenes',
  'Después del diluvio y antes del llamado de Abraham',
  6,
  'Conceptual',
  'Aproximada / debatida',
  1,
  0,
  'Publicado básico'
);

UPDATE events
SET
  title = 'Babel y la dispersión de las naciones',
  slug = 'babel-y-la-dispersion-de-las-naciones',
  event_type = 'Rebelión / juicio / dispersión',
  summary = 'La humanidad busca hacerse un nombre en Babel, pero Dios confunde las lenguas y dispersa a los pueblos.',
  description = 'Babel muestra el orgullo humano después del diluvio y el gobierno soberano de Dios sobre las naciones. La dispersión prepara el escenario para la promesa a Abraham y para el alcance mundial del plan redentor.',
  biblical_period = 'Orígenes',
  approximate_date = 'Después del diluvio y antes del llamado de Abraham',
  chronological_order = 6,
  temporal_certainty = 'Conceptual',
  geographical_certainty = 'Aproximada / debatida',
  appears_on_timeline = 1,
  appears_on_map = 0,
  status = 'Publicado básico'
WHERE id = 'eve-babel-naciones';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-babel-naciones',
  'Babel: orgullo, lenguas y naciones',
  'babel-orgullo-lenguas-naciones',
  'Infografía',
  'Recurso visual para explicar la secuencia: orgullo humano, ciudad y torre, confusión de lenguas, dispersión y promesa de bendición a las naciones.',
  'Infografía sobre Babel, la confusión de lenguas y la dispersión de las naciones.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-babel-genesis-10-11', 'lec-babel-y-naciones', 'Génesis 10–11', 'Presenta las naciones después del diluvio y el relato de Babel.', 1),
('ref-babel-genesis-11-1-9', 'lec-babel-y-naciones', 'Génesis 11:1-9', 'La humanidad busca hacerse un nombre, y Dios confunde las lenguas.', 2),
('ref-babel-genesis-12-1-3', 'lec-babel-y-naciones', 'Génesis 12:1-3', 'Dios promete bendecir a todas las familias de la tierra por medio de Abraham.', 3),
('ref-babel-hechos-2-1-11', 'lec-babel-y-naciones', 'Hechos 2:1-11', 'En Pentecostés, muchas lenguas oyen las maravillas de Dios.', 4),
('ref-babel-apocalipsis-7-9-10', 'lec-babel-y-naciones', 'Apocalipsis 7:9-10', 'La redención culmina con una multitud de todas las naciones adorando a Dios.', 5);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-babel-1', 'lec-babel-y-naciones', 'Después del diluvio, el pecado siguió presente en el corazón humano.', 1),
('pt-babel-2', 'lec-babel-y-naciones', 'Babel muestra el deseo humano de hacerse un nombre sin depender de Dios.', 2),
('pt-babel-3', 'lec-babel-y-naciones', 'Dios confundió las lenguas y dispersó a los pueblos como juicio y freno a la rebelión.', 3),
('pt-babel-4', 'lec-babel-y-naciones', 'Las naciones no quedan fuera del plan de Dios; Él gobierna sobre todos los pueblos.', 4),
('pt-babel-5', 'lec-babel-y-naciones', 'La promesa a Abraham y el evangelio de Cristo muestran que Dios quiere bendecir a personas de toda nación.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-babel-1', 'lec-babel-y-naciones', '¿Qué revela Babel acerca del orgullo humano?', 1),
('q-babel-2', 'lec-babel-y-naciones', '¿Por qué la dispersión de las naciones también muestra que Dios sigue gobernando la historia?', 2),
('q-babel-3', 'lec-babel-y-naciones', '¿Cómo cambia nuestra forma de mirar a otros pueblos y lenguas saber que Dios tiene un propósito para las naciones?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-babel-y-naciones', 'book-genesis'),
('lec-babel-y-naciones', 'book-hechos'),
('lec-babel-y-naciones', 'book-apocalipsis');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-babel-y-naciones', 'pas-genesis-10-11', 'principal', 1),
('lec-babel-y-naciones', 'pas-genesis-11-1-9', 'apoyo', 2),
('lec-babel-y-naciones', 'pas-genesis-12-1-3', 'conexión', 3),
('lec-babel-y-naciones', 'pas-hechos-2-1-11', 'cumplimiento', 4),
('lec-babel-y-naciones', 'pas-apocalipsis-7-9-10', 'esperanza final', 5);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-babel-y-naciones', 'eve-babel-naciones');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-babel-y-naciones', 'tem-naciones'),
('lec-babel-y-naciones', 'tem-orgullo'),
('lec-babel-y-naciones', 'tem-juicio'),
('lec-babel-y-naciones', 'tem-pecado'),
('lec-babel-y-naciones', 'tem-redencion');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-babel-y-naciones', 'per-humanidad-babel');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-babel-y-naciones', 'lug-babel-sinar');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-babel-y-naciones', 'glo-babel'),
('lec-babel-y-naciones', 'glo-naciones'),
('lec-babel-y-naciones', 'glo-dispersion'),
('lec-babel-y-naciones', 'glo-orgullo');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-babel-y-naciones', 'vis-babel-naciones');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-babel-naciones', 'per-humanidad-babel');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-babel-naciones', 'lug-babel-sinar');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-babel-naciones', 'tem-naciones'),
('eve-babel-naciones', 'tem-orgullo'),
('eve-babel-naciones', 'tem-juicio'),
('eve-babel-naciones', 'tem-pecado'),
('eve-babel-naciones', 'tem-redencion');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-babel-naciones', 'book-genesis');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-babel-naciones', 'pas-genesis-10-11', 'principal', 1),
('eve-babel-naciones', 'pas-genesis-11-1-9', 'apoyo', 2),
('eve-babel-naciones', 'pas-genesis-12-1-3', 'conexión', 3);