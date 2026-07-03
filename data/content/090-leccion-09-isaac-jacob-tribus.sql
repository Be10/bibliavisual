DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-isaac-jacob-tribus';

DELETE FROM event_passages
WHERE event_id = 'eve-origen-doce-tribus';

DELETE FROM event_books
WHERE event_id = 'eve-origen-doce-tribus';

DELETE FROM event_topics
WHERE event_id = 'eve-origen-doce-tribus';

DELETE FROM event_places
WHERE event_id = 'eve-origen-doce-tribus';

DELETE FROM event_people
WHERE event_id = 'eve-origen-doce-tribus';

UPDATE lessons
SET
  title = 'Isaac, Jacob y las doce tribus',
  slug = 'isaac-jacob-y-las-doce-tribus',
  eyebrow = 'Lección 9 de 20 · 7–10 minutos',
  main_idea = 'Dios preservó su promesa por medio de Isaac y Jacob, formando la familia que llegaría a ser las doce tribus de Israel.',
  summary = 'La historia de Isaac, Jacob y sus hijos muestra que la promesa de Dios avanza en medio de familias imperfectas, conflictos y gracia soberana.',
  explanation = 'La promesa dada a Abraham continúa con Isaac, el hijo prometido, y luego con Jacob. La Biblia no presenta a esta familia como perfecta: hay rivalidad, favoritismo, engaño, temor y conflictos. Aun así, Dios permanece fiel a su pacto. Jacob recibe la promesa, es transformado por Dios y recibe el nombre Israel. Sus hijos llegan a ser el origen de las doce tribus, la familia por medio de la cual Dios seguirá desarrollando su plan redentor. Esta etapa enseña que la historia bíblica no depende de la perfección humana, sino de la fidelidad de Dios, quien preserva su promesa y prepara el camino para el pueblo de Israel y, finalmente, para Cristo.',
  remember = 'Dios preserva su promesa aun por medio de personas y familias débiles, porque su fidelidad es mayor que el fracaso humano.',
  application = 'Esta lección nos ayuda a mirar nuestras familias y conflictos con humildad, confiando en que Dios puede obrar con gracia y propósito aun en medio de debilidades reales.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-isaac-jacob-tribus';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-genesis-25', 'book-genesis', 25),
('chap-genesis-27', 'book-genesis', 27),
('chap-genesis-28', 'book-genesis', 28),
('chap-genesis-32', 'book-genesis', 32),
('chap-genesis-35', 'book-genesis', 35),
('chap-genesis-49', 'book-genesis', 49),
('chap-exodo-1', 'book-exodo', 1);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-genesis-25-19-34',
  'Génesis 25:19-34',
  'genesis-25-19-34',
  'book-genesis',
  25,
  19,
  25,
  34,
  'Nacimiento de Esaú y Jacob, y comienzo del conflicto familiar alrededor de la primogenitura.',
  'Publicado básico'
),
(
  'pas-genesis-28-10-22',
  'Génesis 28:10-22',
  'genesis-28-10-22',
  'book-genesis',
  28,
  10,
  28,
  22,
  'Dios confirma a Jacob la promesa hecha a Abraham e Isaac.',
  'Publicado básico'
),
(
  'pas-genesis-32-22-32',
  'Génesis 32:22-32',
  'genesis-32-22-32',
  'book-genesis',
  32,
  22,
  32,
  32,
  'Jacob lucha y recibe el nombre Israel.',
  'Publicado básico'
),
(
  'pas-genesis-35-9-15',
  'Génesis 35:9-15',
  'genesis-35-9-15',
  'book-genesis',
  35,
  9,
  35,
  15,
  'Dios reafirma el nombre Israel y la promesa de descendencia y tierra.',
  'Publicado básico'
),
(
  'pas-genesis-49-1-28',
  'Génesis 49:1-28',
  'genesis-49-1-28',
  'book-genesis',
  49,
  1,
  49,
  28,
  'Jacob bendice a sus hijos, vinculados con las doce tribus de Israel.',
  'Publicado básico'
),
(
  'pas-exodo-1-1-7',
  'Éxodo 1:1-7',
  'exodo-1-1-7',
  'book-exodo',
  1,
  1,
  1,
  7,
  'Los hijos de Israel se multiplican en Egipto, mostrando la continuidad de la promesa.',
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
  'tem-pacto',
  'Pacto',
  'pacto',
  'Compromiso establecido por Dios que define una relación, promesas y responsabilidades dentro de su plan.',
  'Publicado básico'
),
(
  'tem-eleccion',
  'Elección',
  'eleccion',
  'Acción soberana de Dios al escoger conforme a su propósito y gracia.',
  'Publicado básico'
),
(
  'tem-israel',
  'Israel',
  'israel',
  'Nombre dado a Jacob y también al pueblo que desciende de él en la historia bíblica.',
  'Publicado básico'
),
(
  'tem-pueblo-de-dios',
  'Pueblo de Dios',
  'pueblo-de-dios',
  'Comunidad formada por Dios para conocerle, adorarle y participar en su propósito redentor.',
  'Publicado básico'
);

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
(
  'per-isaac',
  'Isaac',
  'isaac',
  'Hijo de Abraham y Sara, heredero de la promesa del pacto.',
  'Publicado básico'
),
(
  'per-rebeca',
  'Rebeca',
  'rebeca',
  'Esposa de Isaac y madre de Esaú y Jacob.',
  'Publicado básico'
),
(
  'per-jacob',
  'Jacob / Israel',
  'jacob-israel',
  'Hijo de Isaac y Rebeca; Dios le dio el nombre Israel y de sus hijos vienen las doce tribus.',
  'Publicado básico'
),
(
  'per-esau',
  'Esaú',
  'esau',
  'Hermano de Jacob, relacionado con el conflicto familiar alrededor de la primogenitura y la bendición.',
  'Publicado básico'
),
(
  'per-doce-tribus',
  'Las doce tribus de Israel',
  'las-doce-tribus-de-israel',
  'Familias descendientes de los hijos de Jacob que llegan a formar el pueblo de Israel.',
  'Publicado básico'
);

INSERT OR IGNORE INTO places (
  id, name, slug, place_type, summary, latitude, longitude, map_zoom,
  geographical_certainty, status
) VALUES
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
),
(
  'lug-beerseba',
  'Beerseba',
  'beerseba',
  'Ciudad / región',
  'Lugar relacionado con los patriarcas en el sur de Canaán.',
  31.2520,
  34.7915,
  9,
  'Aproximada',
  'Publicado básico'
),
(
  'lug-betel',
  'Betel',
  'betel',
  'Lugar / ciudad',
  'Lugar donde Jacob recibió una visión y Dios le confirmó la promesa.',
  31.9300,
  35.2200,
  10,
  'Aproximada / debatida',
  'Publicado básico'
),
(
  'lug-peniel',
  'Peniel',
  'peniel',
  'Lugar',
  'Lugar asociado con la lucha de Jacob y el cambio de su nombre a Israel. Su ubicación exacta es debatida.',
  NULL,
  NULL,
  NULL,
  'Debatida',
  'Publicado básico'
);

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
(
  'glo-patriarcas',
  'Patriarcas',
  'patriarcas',
  'Padres principales de Israel: Abraham, Isaac y Jacob.',
  'Publicado básico'
),
(
  'glo-israel',
  'Israel',
  'israel',
  'Nombre dado a Jacob y usado para el pueblo descendiente de sus hijos.',
  'Publicado básico'
),
(
  'glo-primogenitura',
  'Primogenitura',
  'primogenitura',
  'Derecho o posición especial asociada con el hijo primogénito en el contexto familiar antiguo.',
  'Publicado básico'
),
(
  'glo-doce-tribus',
  'Doce tribus',
  'doce-tribus',
  'Familias descendientes de los hijos de Jacob que forman el pueblo de Israel.',
  'Publicado básico'
);

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-origen-doce-tribus',
  'Origen de las doce tribus',
  'origen-de-las-doce-tribus',
  'Patriarcas / formación del pueblo',
  'Dios preserva la promesa por medio de Isaac y Jacob, y forma la familia que llegará a ser Israel.',
  'La historia de Isaac, Jacob y sus hijos muestra la continuidad del pacto con Abraham. Dios sostiene su promesa en medio de debilidad familiar y prepara el surgimiento del pueblo de Israel.',
  'Patriarcas',
  'Después de Abraham y antes de José en Egipto',
  9,
  'Aproximada',
  'Aproximada',
  1,
  1,
  'Publicado básico'
);

UPDATE events
SET
  title = 'Origen de las doce tribus',
  slug = 'origen-de-las-doce-tribus',
  event_type = 'Patriarcas / formación del pueblo',
  summary = 'Dios preserva la promesa por medio de Isaac y Jacob, y forma la familia que llegará a ser Israel.',
  description = 'La historia de Isaac, Jacob y sus hijos muestra la continuidad del pacto con Abraham. Dios sostiene su promesa en medio de debilidad familiar y prepara el surgimiento del pueblo de Israel.',
  biblical_period = 'Patriarcas',
  approximate_date = 'Después de Abraham y antes de José en Egipto',
  chronological_order = 9,
  temporal_certainty = 'Aproximada',
  geographical_certainty = 'Aproximada',
  appears_on_timeline = 1,
  appears_on_map = 1,
  status = 'Publicado básico'
WHERE id = 'eve-origen-doce-tribus';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-isaac-jacob-tribus',
  'De la promesa a las doce tribus',
  'de-la-promesa-a-las-doce-tribus',
  'Infografía',
  'Recurso visual para seguir la línea Abraham, Isaac, Jacob y las doce tribus.',
  'Infografía con la línea familiar de Abraham, Isaac, Jacob y las doce tribus de Israel.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-tribus-genesis-25-19-34', 'lec-isaac-jacob-tribus', 'Génesis 25:19-34', 'Inicio de la historia de Esaú y Jacob.', 1),
('ref-tribus-genesis-28-10-22', 'lec-isaac-jacob-tribus', 'Génesis 28:10-22', 'Dios confirma a Jacob la promesa patriarcal.', 2),
('ref-tribus-genesis-32-22-32', 'lec-isaac-jacob-tribus', 'Génesis 32:22-32', 'Jacob recibe el nombre Israel.', 3),
('ref-tribus-genesis-49-1-28', 'lec-isaac-jacob-tribus', 'Génesis 49:1-28', 'Jacob bendice a sus hijos, vinculados con las doce tribus.', 4),
('ref-tribus-exodo-1-1-7', 'lec-isaac-jacob-tribus', 'Éxodo 1:1-7', 'La familia de Israel se multiplica en Egipto.', 5);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-tribus-1', 'lec-isaac-jacob-tribus', 'La promesa dada a Abraham continúa por medio de Isaac.', 1),
('pt-tribus-2', 'lec-isaac-jacob-tribus', 'Jacob muestra que Dios obra con gracia en personas imperfectas.', 2),
('pt-tribus-3', 'lec-isaac-jacob-tribus', 'Dios confirma su promesa a Jacob y le da el nombre Israel.', 3),
('pt-tribus-4', 'lec-isaac-jacob-tribus', 'Los hijos de Jacob llegan a ser el origen de las doce tribus.', 4),
('pt-tribus-5', 'lec-isaac-jacob-tribus', 'La fidelidad de Dios sostiene la historia aun en medio de conflictos familiares.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-tribus-1', 'lec-isaac-jacob-tribus', '¿Qué nos enseña la historia de Jacob sobre la gracia de Dios?', 1),
('q-tribus-2', 'lec-isaac-jacob-tribus', '¿Por qué es importante que Jacob reciba el nombre Israel?', 2),
('q-tribus-3', 'lec-isaac-jacob-tribus', '¿Cómo se ve la fidelidad de Dios en una familia llena de conflictos?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-isaac-jacob-tribus', 'book-genesis'),
('lec-isaac-jacob-tribus', 'book-exodo');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-isaac-jacob-tribus', 'pas-genesis-25-19-34', 'contexto familiar', 1),
('lec-isaac-jacob-tribus', 'pas-genesis-28-10-22', 'promesa confirmada', 2),
('lec-isaac-jacob-tribus', 'pas-genesis-32-22-32', 'transformación', 3),
('lec-isaac-jacob-tribus', 'pas-genesis-49-1-28', 'origen de las tribus', 4),
('lec-isaac-jacob-tribus', 'pas-exodo-1-1-7', 'continuidad', 5);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-isaac-jacob-tribus', 'eve-origen-doce-tribus');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-isaac-jacob-tribus', 'tem-promesa'),
('lec-isaac-jacob-tribus', 'tem-pacto'),
('lec-isaac-jacob-tribus', 'tem-eleccion'),
('lec-isaac-jacob-tribus', 'tem-israel'),
('lec-isaac-jacob-tribus', 'tem-pueblo-de-dios');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-isaac-jacob-tribus', 'per-isaac'),
('lec-isaac-jacob-tribus', 'per-rebeca'),
('lec-isaac-jacob-tribus', 'per-jacob'),
('lec-isaac-jacob-tribus', 'per-esau'),
('lec-isaac-jacob-tribus', 'per-doce-tribus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-isaac-jacob-tribus', 'lug-canaan'),
('lec-isaac-jacob-tribus', 'lug-beerseba'),
('lec-isaac-jacob-tribus', 'lug-betel'),
('lec-isaac-jacob-tribus', 'lug-peniel');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-isaac-jacob-tribus', 'glo-patriarcas'),
('lec-isaac-jacob-tribus', 'glo-israel'),
('lec-isaac-jacob-tribus', 'glo-primogenitura'),
('lec-isaac-jacob-tribus', 'glo-doce-tribus');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-isaac-jacob-tribus', 'vis-isaac-jacob-tribus');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-origen-doce-tribus', 'per-isaac'),
('eve-origen-doce-tribus', 'per-rebeca'),
('eve-origen-doce-tribus', 'per-jacob'),
('eve-origen-doce-tribus', 'per-esau'),
('eve-origen-doce-tribus', 'per-doce-tribus');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-origen-doce-tribus', 'lug-canaan'),
('eve-origen-doce-tribus', 'lug-beerseba'),
('eve-origen-doce-tribus', 'lug-betel'),
('eve-origen-doce-tribus', 'lug-peniel');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-origen-doce-tribus', 'tem-promesa'),
('eve-origen-doce-tribus', 'tem-pacto'),
('eve-origen-doce-tribus', 'tem-eleccion'),
('eve-origen-doce-tribus', 'tem-israel'),
('eve-origen-doce-tribus', 'tem-pueblo-de-dios');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-origen-doce-tribus', 'book-genesis'),
('eve-origen-doce-tribus', 'book-exodo');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-origen-doce-tribus', 'pas-genesis-28-10-22', 'promesa confirmada', 1),
('eve-origen-doce-tribus', 'pas-genesis-32-22-32', 'transformación', 2),
('eve-origen-doce-tribus', 'pas-genesis-49-1-28', 'origen de las tribus', 3),
('eve-origen-doce-tribus', 'pas-exodo-1-1-7', 'continuidad', 4);