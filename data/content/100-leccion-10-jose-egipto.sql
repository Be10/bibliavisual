DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-jose-y-egipto';

DELETE FROM event_passages
WHERE event_id = 'eve-jose-egipto';

DELETE FROM event_books
WHERE event_id = 'eve-jose-egipto';

DELETE FROM event_topics
WHERE event_id = 'eve-jose-egipto';

DELETE FROM event_places
WHERE event_id = 'eve-jose-egipto';

DELETE FROM event_people
WHERE event_id = 'eve-jose-egipto';

UPDATE lessons
SET
  title = 'José y Egipto',
  slug = 'jose-y-egipto',
  eyebrow = 'Lección 10 de 20 · 7–10 minutos',
  main_idea = 'Dios usó la vida de José, incluso el sufrimiento y la injusticia, para preservar a la familia de Israel y preparar el escenario del Éxodo.',
  summary = 'La historia de José muestra la providencia de Dios: lo que otros hicieron para mal, Dios lo encaminó para preservar vida y continuar su promesa.',
  explanation = 'José fue vendido por sus hermanos, llevado a Egipto, acusado injustamente y encarcelado. Sin embargo, Dios estaba obrando aun en medio de circunstancias dolorosas. Con el tiempo, José fue levantado a una posición de autoridad en Egipto y usado para salvar muchas vidas durante el hambre. Cuando se reencontró con sus hermanos, José entendió que el mal humano no había frustrado el propósito de Dios. Esta historia preserva a la familia de Jacob, explica por qué Israel llega a Egipto y prepara el escenario para la siguiente gran etapa: la esclavitud y el Éxodo. La vida de José también ayuda a ver cómo Dios gobierna sobre el sufrimiento y puede usarlo para avanzar su plan redentor.',
  remember = 'Dios gobierna aun sobre el sufrimiento y puede usar lo que otros hacen para mal para cumplir sus buenos propósitos.',
  application = 'La historia de José nos anima a confiar en la providencia de Dios, practicar el perdón y recordar que el dolor no tiene la última palabra cuando Dios está obrando.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-jose-y-egipto';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-genesis-37', 'book-genesis', 37),
('chap-genesis-39', 'book-genesis', 39),
('chap-genesis-41', 'book-genesis', 41),
('chap-genesis-45', 'book-genesis', 45),
('chap-genesis-50', 'book-genesis', 50),
('chap-exodo-1', 'book-exodo', 1),
('chap-romanos-8', 'book-romanos', 8);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-genesis-37',
  'Génesis 37',
  'genesis-37',
  'book-genesis',
  37,
  NULL,
  37,
  NULL,
  'José es vendido por sus hermanos y llevado a Egipto.',
  'Publicado básico'
),
(
  'pas-genesis-39',
  'Génesis 39',
  'genesis-39',
  'book-genesis',
  39,
  NULL,
  39,
  NULL,
  'José sirve en Egipto, sufre injusticia y experimenta la presencia de Dios.',
  'Publicado básico'
),
(
  'pas-genesis-45-4-8',
  'Génesis 45:4-8',
  'genesis-45-4-8',
  'book-genesis',
  45,
  4,
  45,
  8,
  'José reconoce que Dios lo envió delante de su familia para preservar vida.',
  'Publicado básico'
),
(
  'pas-genesis-50-20',
  'Génesis 50:20',
  'genesis-50-20',
  'book-genesis',
  50,
  20,
  50,
  20,
  'José afirma que Dios encaminó para bien lo que otros pensaron para mal.',
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
),
(
  'pas-romanos-8-28',
  'Romanos 8:28',
  'romanos-8-28',
  'book-romanos',
  8,
  28,
  8,
  28,
  'Dios obra en todas las cosas conforme a su propósito para los que le aman.',
  'Publicado básico'
);

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
(
  'tem-providencia',
  'Providencia',
  'providencia',
  'Gobierno sabio y fiel de Dios sobre la historia y las circunstancias.',
  'Publicado básico'
),
(
  'tem-sufrimiento',
  'Sufrimiento',
  'sufrimiento',
  'Dolor o aflicción que ocurre en un mundo caído, bajo el gobierno soberano de Dios.',
  'Publicado básico'
),
(
  'tem-perdon',
  'Perdón',
  'perdon',
  'Acto de no cobrar la ofensa como venganza, reflejando la gracia y misericordia de Dios.',
  'Publicado básico'
),
(
  'tem-promesa',
  'Promesa',
  'promesa',
  'Compromiso fiel de Dios por medio del cual anuncia y cumple su plan.',
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
  'per-jose',
  'José',
  'jose',
  'Hijo de Jacob vendido por sus hermanos y usado por Dios en Egipto para preservar vida.',
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
  'per-hermanos-jose',
  'Los hermanos de José',
  'los-hermanos-de-jose',
  'Hijos de Jacob que vendieron a José, pero luego fueron preservados por medio de la providencia de Dios.',
  'Publicado básico'
),
(
  'per-faraon-jose',
  'Faraón en tiempos de José',
  'faraon-en-tiempos-de-jose',
  'Gobernante de Egipto durante el ascenso de José a una posición de autoridad.',
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
  'lug-egipto',
  'Egipto',
  'egipto',
  'Región / nación antigua',
  'Lugar donde José fue llevado y donde la familia de Jacob llegó a vivir antes del Éxodo.',
  26.8206,
  30.8025,
  5,
  'Aproximada',
  'Publicado básico'
),
(
  'lug-gosen',
  'Gosén',
  'gosen',
  'Región',
  'Región de Egipto asociada con la residencia de la familia de Jacob. Su delimitación exacta se trata con cautela.',
  30.8000,
  31.8000,
  8,
  'Aproximada / debatida',
  'Publicado básico'
);

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
(
  'glo-providencia',
  'Providencia',
  'providencia',
  'Gobierno sabio y fiel de Dios sobre todas las circunstancias.',
  'Publicado básico'
),
(
  'glo-jose',
  'José',
  'jose',
  'Hijo de Jacob usado por Dios para preservar vida en Egipto.',
  'Publicado básico'
),
(
  'glo-egipto',
  'Egipto',
  'egipto',
  'Nación antigua donde José fue llevado y donde Israel vivió antes del Éxodo.',
  'Publicado básico'
),
(
  'glo-perdon',
  'Perdón',
  'perdon',
  'Respuesta de gracia ante una ofensa, renunciando a la venganza.',
  'Publicado básico'
);

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-jose-egipto',
  'José en Egipto',
  'jose-en-egipto',
  'Providencia / preservación',
  'José es llevado a Egipto, sufre injusticia y Dios lo usa para preservar a la familia de Israel.',
  'La historia de José muestra cómo Dios gobierna aun sobre el mal humano. José llega a Egipto por medio de la traición de sus hermanos, pero Dios usa esos acontecimientos para preservar vida y preparar el escenario del Éxodo.',
  'Patriarcas',
  'Después de Jacob y antes de Moisés',
  10,
  'Aproximada',
  'Aproximada',
  1,
  1,
  'Publicado básico'
);

UPDATE events
SET
  title = 'José en Egipto',
  slug = 'jose-en-egipto',
  event_type = 'Providencia / preservación',
  summary = 'José es llevado a Egipto, sufre injusticia y Dios lo usa para preservar a la familia de Israel.',
  description = 'La historia de José muestra cómo Dios gobierna aun sobre el mal humano. José llega a Egipto por medio de la traición de sus hermanos, pero Dios usa esos acontecimientos para preservar vida y preparar el escenario del Éxodo.',
  biblical_period = 'Patriarcas',
  approximate_date = 'Después de Jacob y antes de Moisés',
  chronological_order = 10,
  temporal_certainty = 'Aproximada',
  geographical_certainty = 'Aproximada',
  appears_on_timeline = 1,
  appears_on_map = 1,
  status = 'Publicado básico'
WHERE id = 'eve-jose-egipto';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-jose-egipto',
  'José: del sufrimiento a la preservación',
  'jose-del-sufrimiento-a-la-preservacion',
  'Infografía',
  'Recurso visual para seguir la secuencia de José: venta, Egipto, sufrimiento, exaltación, perdón y preservación de Israel.',
  'Infografía sobre la historia de José en Egipto y la providencia de Dios.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-jose-genesis-37', 'lec-jose-y-egipto', 'Génesis 37', 'José es vendido por sus hermanos y llevado a Egipto.', 1),
('ref-jose-genesis-39', 'lec-jose-y-egipto', 'Génesis 39', 'José sufre injusticia, pero Dios está con él.', 2),
('ref-jose-genesis-45-4-8', 'lec-jose-y-egipto', 'Génesis 45:4-8', 'José reconoce el propósito preservador de Dios.', 3),
('ref-jose-genesis-50-20', 'lec-jose-y-egipto', 'Génesis 50:20', 'Dios encaminó para bien lo que otros pensaron para mal.', 4),
('ref-jose-exodo-1-1-7', 'lec-jose-y-egipto', 'Éxodo 1:1-7', 'Israel se multiplica en Egipto antes del Éxodo.', 5),
('ref-jose-romanos-8-28', 'lec-jose-y-egipto', 'Romanos 8:28', 'Dios obra conforme a su propósito en todas las cosas.', 6);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-jose-1', 'lec-jose-y-egipto', 'José sufrió por la traición de sus hermanos y por injusticias en Egipto.', 1),
('pt-jose-2', 'lec-jose-y-egipto', 'La presencia de Dios acompañó a José aun cuando sus circunstancias eran difíciles.', 2),
('pt-jose-3', 'lec-jose-y-egipto', 'Dios usó a José para preservar vida durante el hambre.', 3),
('pt-jose-4', 'lec-jose-y-egipto', 'José vio que Dios podía encaminar para bien lo que otros hicieron para mal.', 4),
('pt-jose-5', 'lec-jose-y-egipto', 'La llegada de Israel a Egipto prepara el escenario para Moisés y el Éxodo.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-jose-1', 'lec-jose-y-egipto', '¿Cómo se ve la providencia de Dios en la vida de José?', 1),
('q-jose-2', 'lec-jose-y-egipto', '¿Qué nos enseña José sobre el perdón?', 2),
('q-jose-3', 'lec-jose-y-egipto', '¿Por qué la historia de José prepara la siguiente etapa del Éxodo?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-jose-y-egipto', 'book-genesis'),
('lec-jose-y-egipto', 'book-exodo'),
('lec-jose-y-egipto', 'book-romanos');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-jose-y-egipto', 'pas-genesis-37', 'inicio del conflicto', 1),
('lec-jose-y-egipto', 'pas-genesis-39', 'sufrimiento e integridad', 2),
('lec-jose-y-egipto', 'pas-genesis-45-4-8', 'propósito preservador', 3),
('lec-jose-y-egipto', 'pas-genesis-50-20', 'providencia', 4),
('lec-jose-y-egipto', 'pas-exodo-1-1-7', 'preparación del éxodo', 5),
('lec-jose-y-egipto', 'pas-romanos-8-28', 'conexión doctrinal', 6);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-jose-y-egipto', 'eve-jose-egipto');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-jose-y-egipto', 'tem-providencia'),
('lec-jose-y-egipto', 'tem-sufrimiento'),
('lec-jose-y-egipto', 'tem-perdon'),
('lec-jose-y-egipto', 'tem-promesa'),
('lec-jose-y-egipto', 'tem-redencion');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-jose-y-egipto', 'per-jose'),
('lec-jose-y-egipto', 'per-jacob'),
('lec-jose-y-egipto', 'per-hermanos-jose'),
('lec-jose-y-egipto', 'per-faraon-jose');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-jose-y-egipto', 'lug-canaan'),
('lec-jose-y-egipto', 'lug-egipto'),
('lec-jose-y-egipto', 'lug-gosen');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-jose-y-egipto', 'glo-providencia'),
('lec-jose-y-egipto', 'glo-jose'),
('lec-jose-y-egipto', 'glo-egipto'),
('lec-jose-y-egipto', 'glo-perdon');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-jose-y-egipto', 'vis-jose-egipto');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-jose-egipto', 'per-jose'),
('eve-jose-egipto', 'per-jacob'),
('eve-jose-egipto', 'per-hermanos-jose'),
('eve-jose-egipto', 'per-faraon-jose');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-jose-egipto', 'lug-canaan'),
('eve-jose-egipto', 'lug-egipto'),
('eve-jose-egipto', 'lug-gosen');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-jose-egipto', 'tem-providencia'),
('eve-jose-egipto', 'tem-sufrimiento'),
('eve-jose-egipto', 'tem-perdon'),
('eve-jose-egipto', 'tem-promesa'),
('eve-jose-egipto', 'tem-redencion');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-jose-egipto', 'book-genesis'),
('eve-jose-egipto', 'book-exodo'),
('eve-jose-egipto', 'book-romanos');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-jose-egipto', 'pas-genesis-37', 'inicio del conflicto', 1),
('eve-jose-egipto', 'pas-genesis-45-4-8', 'propósito preservador', 2),
('eve-jose-egipto', 'pas-genesis-50-20', 'providencia', 3),
('eve-jose-egipto', 'pas-exodo-1-1-7', 'preparación del éxodo', 4);