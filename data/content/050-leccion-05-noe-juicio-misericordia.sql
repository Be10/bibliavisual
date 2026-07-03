DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-noe-juicio-misericordia';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-noe-juicio-misericordia';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-noe-juicio-misericordia';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-noe-juicio-misericordia';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-noe-juicio-misericordia';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-noe-juicio-misericordia';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-noe-juicio-misericordia';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-noe-juicio-misericordia';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-noe-juicio-misericordia';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-noe-juicio-misericordia';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-noe-juicio-misericordia';

UPDATE lessons
SET
  title = 'Noé, el juicio y la misericordia',
  slug = 'noe-el-juicio-y-la-misericordia',
  eyebrow = 'Lección 5 de 20 · 7–10 minutos',
  main_idea = 'En los días de Noé, Dios juzgó la maldad humana, pero también mostró misericordia al preservar vida y continuar su plan de redención.',
  summary = 'Génesis 6–9 muestra que Dios toma el pecado en serio, pero también provee salvación, preserva a Noé y establece un pacto de misericordia.',
  explanation = 'Después de la caída y de la primera promesa de redención, la Biblia muestra que la maldad humana siguió creciendo. El relato de Noé enseña que Dios no es indiferente al pecado: Él juzga con justicia. Pero el juicio no elimina la misericordia. Dios llamó a Noé, preservó a su familia, guardó vida en el arca y después estableció un pacto con una señal visible. Esta historia ayuda a ver que la salvación viene por la gracia de Dios, que la fe responde obedeciendo su palabra y que el plan redentor continúa avanzando hasta Cristo.',
  remember = 'Dios juzga el pecado con justicia, pero muestra misericordia y preserva su plan de redención.',
  application = 'La historia de Noé nos llama a tomar en serio la palabra de Dios, confiar en su misericordia y buscar refugio en la salvación que Él provee.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-noe-juicio-misericordia';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-genesis-6', 'book-genesis', 6),
('chap-genesis-7', 'book-genesis', 7),
('chap-genesis-8', 'book-genesis', 8),
('chap-genesis-9', 'book-genesis', 9),
('chap-mateo-24', 'book-mateo', 24),
('chap-hebreos-11', 'book-hebreos', 11),
('chap-1-pedro-3', 'book-1-pedro', 3);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-genesis-6-9',
  'Génesis 6–9',
  'genesis-6-9',
  'book-genesis',
  6,
  NULL,
  9,
  NULL,
  'Relato de Noé, el diluvio, el arca y el pacto de Dios después del juicio.',
  'Publicado básico'
),
(
  'pas-genesis-6-5-8',
  'Génesis 6:5-8',
  'genesis-6-5-8',
  'book-genesis',
  6,
  5,
  6,
  8,
  'La maldad humana crece, pero Noé halla gracia delante de Dios.',
  'Publicado básico'
),
(
  'pas-genesis-9-8-17',
  'Génesis 9:8-17',
  'genesis-9-8-17',
  'book-genesis',
  9,
  8,
  9,
  17,
  'Dios establece su pacto con Noé y da una señal visible de misericordia.',
  'Publicado básico'
),
(
  'pas-mateo-24-37-39',
  'Mateo 24:37-39',
  'mateo-24-37-39',
  'book-mateo',
  24,
  37,
  24,
  39,
  'Jesús usa los días de Noé como advertencia sobre vigilancia y juicio.',
  'Publicado básico'
),
(
  'pas-hebreos-11-7',
  'Hebreos 11:7',
  'hebreos-11-7',
  'book-hebreos',
  11,
  7,
  11,
  7,
  'Noé responde por fe a la palabra de Dios.',
  'Publicado básico'
),
(
  'pas-1-pedro-3-20',
  '1 Pedro 3:20',
  '1-pedro-3-20',
  'book-1-pedro',
  3,
  20,
  3,
  20,
  'Pedro recuerda la paciencia de Dios en los días de Noé.',
  'Publicado básico'
);

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
(
  'tem-juicio',
  'Juicio',
  'juicio',
  'Acción justa de Dios al confrontar y castigar el pecado.',
  'Publicado básico'
),
(
  'tem-misericordia',
  'Misericordia',
  'misericordia',
  'Bondad compasiva de Dios hacia quienes no pueden salvarse a sí mismos.',
  'Publicado básico'
),
(
  'tem-pacto',
  'Pacto',
  'pacto',
  'Compromiso solemne establecido por Dios para relacionarse fielmente con su creación y su pueblo.',
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
  'per-noe',
  'Noé',
  'noe',
  'Hombre preservado por Dios durante el diluvio; respondió por fe y fue instrumento para conservar vida sobre la tierra.',
  'Publicado básico'
);

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
(
  'glo-juicio',
  'Juicio',
  'juicio',
  'Acto por el cual Dios responde al pecado con justicia perfecta.',
  'Publicado básico'
),
(
  'glo-misericordia',
  'Misericordia',
  'misericordia',
  'Compasión de Dios que rescata y sostiene a quienes dependen de Él.',
  'Publicado básico'
),
(
  'glo-pacto',
  'Pacto',
  'pacto',
  'Compromiso solemne de Dios que revela su fidelidad y sostiene su plan.',
  'Publicado básico'
),
(
  'glo-redencion',
  'Redención',
  'redencion',
  'Rescate o liberación realizada por Dios.',
  'Publicado básico'
);

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-noe-diluvio',
  'Noé y el diluvio',
  'noe-y-el-diluvio',
  'Juicio / misericordia',
  'Dios juzga la maldad humana por medio del diluvio, pero preserva a Noé y continúa su plan.',
  'El relato de Noé muestra la justicia de Dios frente al pecado y su misericordia al preservar vida, establecer un pacto y mantener abierta la línea de la promesa.',
  'Orígenes',
  'Después de la caída y antes de Babel',
  5,
  'Conceptual',
  'No aplica',
  1,
  0,
  'Publicado básico'
);

UPDATE events
SET
  title = 'Noé y el diluvio',
  slug = 'noe-y-el-diluvio',
  event_type = 'Juicio / misericordia',
  summary = 'Dios juzga la maldad humana por medio del diluvio, pero preserva a Noé y continúa su plan.',
  description = 'El relato de Noé muestra la justicia de Dios frente al pecado y su misericordia al preservar vida, establecer un pacto y mantener abierta la línea de la promesa.',
  biblical_period = 'Orígenes',
  approximate_date = 'Después de la caída y antes de Babel',
  chronological_order = 5,
  temporal_certainty = 'Conceptual',
  geographical_certainty = 'No aplica',
  appears_on_timeline = 1,
  appears_on_map = 0,
  status = 'Publicado básico'
WHERE id = 'eve-noe-diluvio';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-noe-juicio-misericordia',
  'Noé: juicio, arca y pacto',
  'noe-juicio-arca-pacto',
  'Infografía',
  'Recurso visual para explicar la secuencia: maldad humana, juicio de Dios, arca, preservación de vida y pacto.',
  'Infografía sobre Noé, el diluvio, el arca y el pacto de Dios.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-noe-genesis-6-5-8', 'lec-noe-juicio-misericordia', 'Génesis 6:5-8', 'La maldad humana crece, pero Noé halla gracia delante de Dios.', 1),
('ref-noe-genesis-6-9', 'lec-noe-juicio-misericordia', 'Génesis 6–9', 'Relato del diluvio, el arca y el pacto con Noé.', 2),
('ref-noe-genesis-9-8-17', 'lec-noe-juicio-misericordia', 'Génesis 9:8-17', 'Dios establece su pacto después del diluvio.', 3),
('ref-noe-hebreos-11-7', 'lec-noe-juicio-misericordia', 'Hebreos 11:7', 'Noé responde por fe a la advertencia de Dios.', 4),
('ref-noe-1-pedro-3-20', 'lec-noe-juicio-misericordia', '1 Pedro 3:20', 'Pedro recuerda la paciencia de Dios en los días de Noé.', 5);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-noe-1', 'lec-noe-juicio-misericordia', 'Después de la caída, la maldad humana siguió creciendo.', 1),
('pt-noe-2', 'lec-noe-juicio-misericordia', 'Dios juzga el pecado porque es justo y santo.', 2),
('pt-noe-3', 'lec-noe-juicio-misericordia', 'Dios mostró misericordia al preservar a Noé, a su familia y a los seres vivos.', 3),
('pt-noe-4', 'lec-noe-juicio-misericordia', 'El arca muestra que la salvación viene por la provisión de Dios y se recibe con fe obediente.', 4),
('pt-noe-5', 'lec-noe-juicio-misericordia', 'El pacto con Noé muestra que Dios sostiene la creación mientras su plan redentor continúa.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-noe-1', 'lec-noe-juicio-misericordia', '¿Qué enseña el diluvio acerca de la seriedad del pecado?', 1),
('q-noe-2', 'lec-noe-juicio-misericordia', '¿Dónde vemos la misericordia de Dios en la historia de Noé?', 2),
('q-noe-3', 'lec-noe-juicio-misericordia', '¿Cómo nos ayuda esta lección a entender nuestra necesidad de salvación?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-noe-juicio-misericordia', 'book-genesis'),
('lec-noe-juicio-misericordia', 'book-mateo'),
('lec-noe-juicio-misericordia', 'book-hebreos'),
('lec-noe-juicio-misericordia', 'book-1-pedro');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-noe-juicio-misericordia', 'pas-genesis-6-9', 'principal', 1),
('lec-noe-juicio-misericordia', 'pas-genesis-6-5-8', 'apoyo', 2),
('lec-noe-juicio-misericordia', 'pas-genesis-9-8-17', 'apoyo', 3),
('lec-noe-juicio-misericordia', 'pas-hebreos-11-7', 'apoyo', 4),
('lec-noe-juicio-misericordia', 'pas-1-pedro-3-20', 'apoyo', 5),
('lec-noe-juicio-misericordia', 'pas-mateo-24-37-39', 'apoyo', 6);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-noe-juicio-misericordia', 'eve-noe-diluvio');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-noe-juicio-misericordia', 'tem-juicio'),
('lec-noe-juicio-misericordia', 'tem-misericordia'),
('lec-noe-juicio-misericordia', 'tem-pacto'),
('lec-noe-juicio-misericordia', 'tem-pecado'),
('lec-noe-juicio-misericordia', 'tem-redencion');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-noe-juicio-misericordia', 'per-noe');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-noe-juicio-misericordia', 'glo-juicio'),
('lec-noe-juicio-misericordia', 'glo-misericordia'),
('lec-noe-juicio-misericordia', 'glo-pacto'),
('lec-noe-juicio-misericordia', 'glo-redencion');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-noe-juicio-misericordia', 'vis-noe-juicio-misericordia');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-noe-diluvio', 'per-noe');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-noe-diluvio', 'tem-juicio'),
('eve-noe-diluvio', 'tem-misericordia'),
('eve-noe-diluvio', 'tem-pacto'),
('eve-noe-diluvio', 'tem-pecado'),
('eve-noe-diluvio', 'tem-redencion');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-noe-diluvio', 'book-genesis');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-noe-diluvio', 'pas-genesis-6-9', 'principal', 1),
('eve-noe-diluvio', 'pas-genesis-6-5-8', 'apoyo', 2),
('eve-noe-diluvio', 'pas-genesis-9-8-17', 'apoyo', 3);