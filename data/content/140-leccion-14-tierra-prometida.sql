DELETE FROM lesson_visual_resources WHERE lesson_id = 'lec-tierra-prometida';
DELETE FROM lesson_glossary WHERE lesson_id = 'lec-tierra-prometida';
DELETE FROM lesson_places WHERE lesson_id = 'lec-tierra-prometida';
DELETE FROM lesson_people WHERE lesson_id = 'lec-tierra-prometida';
DELETE FROM lesson_topics WHERE lesson_id = 'lec-tierra-prometida';
DELETE FROM lesson_events WHERE lesson_id = 'lec-tierra-prometida';
DELETE FROM lesson_passages WHERE lesson_id = 'lec-tierra-prometida';
DELETE FROM lesson_books WHERE lesson_id = 'lec-tierra-prometida';
DELETE FROM lesson_questions WHERE lesson_id = 'lec-tierra-prometida';
DELETE FROM lesson_points WHERE lesson_id = 'lec-tierra-prometida';
DELETE FROM lesson_bible_refs WHERE lesson_id = 'lec-tierra-prometida';

DELETE FROM event_passages WHERE event_id = 'eve-entrada-tierra-prometida';
DELETE FROM event_books WHERE event_id = 'eve-entrada-tierra-prometida';
DELETE FROM event_topics WHERE event_id = 'eve-entrada-tierra-prometida';
DELETE FROM event_places WHERE event_id = 'eve-entrada-tierra-prometida';
DELETE FROM event_people WHERE event_id = 'eve-entrada-tierra-prometida';

UPDATE lessons
SET
  title = 'La tierra prometida',
  slug = 'la-tierra-prometida',
  eyebrow = 'Lección 14 de 20 · 7–10 minutos',
  main_idea = 'Dios llevó a Israel hacia la tierra prometida, mostrando su fidelidad, llamando a su pueblo a confiar y enseñando que el verdadero descanso depende de Él.',
  summary = 'La entrada a Canaán muestra que Dios cumple sus promesas, pero también que su pueblo necesita fe, obediencia y dependencia continua.',
  explanation = 'La tierra prometida era parte central de la promesa dada a Abraham. Después del Éxodo y del desierto, Israel fue llamado a entrar en Canaán confiando en el Señor. Sin embargo, la generación que temió a los gigantes y desconfió de Dios no entró en el descanso prometido. Más adelante, bajo Josué, Dios abrió camino, hizo cruzar el Jordán y comenzó a entregar la tierra. La conquista no debe leerse como triunfo humano autónomo, sino como cumplimiento del juicio y de la promesa de Dios. Aun así, la tierra terrenal no era la meta final. La Biblia desarrolla el tema del descanso y muestra que la esperanza definitiva apunta a una herencia mayor en el reino de Dios.',
  remember = 'Dios cumple sus promesas y llama a su pueblo a entrar en su descanso por fe obediente.',
  application = 'La tierra prometida nos enseña a no mirar solo los obstáculos, sino a confiar en la fidelidad de Dios y caminar en obediencia a su palabra.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-tierra-prometida';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-numeros-13', 'book-numeros', 13),
('chap-numeros-14', 'book-numeros', 14),
('chap-deuteronomio-31', 'book-deuteronomio', 31),
('chap-josue-1', 'book-josue', 1),
('chap-josue-3', 'book-josue', 3),
('chap-josue-4', 'book-josue', 4),
('chap-josue-24', 'book-josue', 24),
('chap-hebreos-4', 'book-hebreos', 4);

INSERT OR IGNORE INTO passages (id, display_reference, slug, book_id, start_chapter, start_verse, end_chapter, end_verse, summary, status) VALUES
('pas-numeros-13-14', 'Números 13–14', 'numeros-13-14', 'book-numeros', 13, NULL, 14, NULL, 'Israel explora Canaán, pero la incredulidad de la generación del desierto retrasa la entrada.', 'Publicado básico'),
('pas-deuteronomio-31-7-8', 'Deuteronomio 31:7-8', 'deuteronomio-31-7-8', 'book-deuteronomio', 31, 7, 31, 8, 'Moisés anima a Josué a guiar al pueblo con confianza en la presencia de Dios.', 'Publicado básico'),
('pas-josue-1-1-9', 'Josué 1:1-9', 'josue-1-1-9', 'book-josue', 1, 1, 1, 9, 'Dios comisiona a Josué para entrar en la tierra con esfuerzo, valentía y obediencia.', 'Publicado básico'),
('pas-josue-3-4', 'Josué 3–4', 'josue-3-4', 'book-josue', 3, NULL, 4, NULL, 'Israel cruza el Jordán y levanta memoria de la fidelidad de Dios.', 'Publicado básico'),
('pas-josue-24-14-15', 'Josué 24:14-15', 'josue-24-14-15', 'book-josue', 24, 14, 24, 15, 'Josué llama al pueblo a servir al Señor con fidelidad.', 'Publicado básico'),
('pas-hebreos-4-8-10', 'Hebreos 4:8-10', 'hebreos-4-8-10', 'book-hebreos', 4, 8, 4, 10, 'Hebreos muestra que el tema del descanso apunta más allá de la entrada histórica a Canaán.', 'Publicado básico');

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
('tem-tierra-prometida', 'Tierra prometida', 'tierra-prometida', 'Tierra prometida por Dios a Abraham y a su descendencia, señal de fidelidad y herencia.', 'Publicado básico'),
('tem-fe', 'Fe', 'fe', 'Confianza en Dios y en su palabra, aun cuando el cumplimiento todavía no se ve por completo.', 'Publicado básico'),
('tem-obediencia', 'Obediencia', 'obediencia', 'Respuesta de fe que escucha y practica la palabra de Dios.', 'Publicado básico'),
('tem-descanso', 'Descanso', 'descanso', 'Meta de comunión, seguridad y plenitud que Dios promete a su pueblo.', 'Publicado básico'),
('tem-fidelidad-de-dios', 'Fidelidad de Dios', 'fidelidad-de-dios', 'Seguridad de que Dios cumple lo que promete porque su carácter es fiel.', 'Publicado básico');

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
('per-moises', 'Moisés', 'moises', 'Siervo de Dios usado para liberar a Israel y entregar la Ley.', 'Publicado básico'),
('per-josue', 'Josué', 'josue', 'Líder que sucedió a Moisés y guió a Israel en la entrada a la tierra prometida.', 'Publicado básico'),
('per-caleb', 'Caleb', 'caleb', 'Uno de los espías que confió en la promesa de Dios acerca de la tierra.', 'Publicado básico'),
('per-israelitas', 'Los israelitas', 'israelitas', 'Pueblo descendiente de Abraham, Isaac y Jacob, liberado por Dios de Egipto.', 'Publicado básico');

INSERT OR IGNORE INTO places (id, name, slug, place_type, summary, latitude, longitude, map_zoom, geographical_certainty, status) VALUES
('lug-canaan', 'Canaán', 'canaan', 'Región', 'Tierra prometida por Dios a Abraham y a su descendencia.', 31.5000, 35.0000, 7, 'Aproximada', 'Publicado básico'),
('lug-jordan', 'Río Jordán', 'rio-jordan', 'Río', 'Río que Israel cruzó al entrar en la tierra prometida bajo Josué.', 32.0000, 35.5500, 7, 'Aproximada', 'Publicado básico'),
('lug-jerico', 'Jericó', 'jerico', 'Ciudad', 'Ciudad de Canaán asociada con los primeros acontecimientos de la entrada de Israel en la tierra.', 31.8711, 35.4442, 10, 'Alta / aproximada', 'Publicado básico'),
('lug-gilgal', 'Gilgal', 'gilgal', 'Lugar / campamento', 'Lugar asociado con el campamento inicial de Israel después de cruzar el Jordán. Su ubicación exacta se trata con cautela.', NULL, NULL, NULL, 'Debatida', 'Publicado básico');

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
('glo-tierra-prometida', 'Tierra prometida', 'tierra-prometida', 'Tierra que Dios prometió dar a Abraham y a su descendencia.', 'Publicado básico'),
('glo-josue', 'Josué', 'josue', 'Líder que sucedió a Moisés y guió a Israel en la entrada a Canaán.', 'Publicado básico'),
('glo-canaan', 'Canaán', 'canaan', 'Región prometida por Dios a los patriarcas y entregada a Israel.', 'Publicado básico'),
('glo-descanso', 'Descanso', 'descanso', 'Tema bíblico relacionado con la herencia, la seguridad y la comunión final con Dios.', 'Publicado básico');

INSERT OR IGNORE INTO events (id, title, slug, event_type, summary, description, biblical_period, approximate_date, chronological_order, temporal_certainty, geographical_certainty, appears_on_timeline, appears_on_map, status) VALUES
('eve-entrada-tierra-prometida', 'Entrada a la tierra prometida', 'entrada-a-la-tierra-prometida', 'Cumplimiento / herencia', 'Dios guía a Israel bajo Josué para entrar en Canaán y comenzar a recibir la tierra prometida.', 'La entrada a la tierra muestra que Dios cumple lo prometido a Abraham. También enseña que la incredulidad impide disfrutar el descanso de Dios y que la obediencia debe acompañar la fe del pueblo.', 'Conquista y tierra', 'Después del desierto y antes del período de los jueces', 14, 'Aproximada', 'Aproximada', 1, 1, 'Publicado básico');

INSERT OR IGNORE INTO visual_resources (id, title, slug, resource_type, description, alt_text, url, status) VALUES
('vis-tierra-prometida', 'Entrada a la tierra prometida', 'entrada-a-la-tierra-prometida', 'Infografía / mapa', 'Recurso visual para ubicar Canaán, el cruce del Jordán y el tema bíblico del descanso.', 'Infografía sobre la entrada de Israel a la tierra prometida.', NULL, 'Idea');

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-tierra-numeros-13-14', 'lec-tierra-prometida', 'Números 13–14', 'La incredulidad impide la entrada inmediata a la tierra.', 1),
('ref-tierra-deuteronomio-31-7-8', 'lec-tierra-prometida', 'Deuteronomio 31:7-8', 'Moisés anima a Josué antes de la entrada.', 2),
('ref-tierra-josue-1-1-9', 'lec-tierra-prometida', 'Josué 1:1-9', 'Dios llama a Josué a liderar con valentía y obediencia.', 3),
('ref-tierra-josue-3-4', 'lec-tierra-prometida', 'Josué 3–4', 'Israel cruza el Jordán por la fidelidad de Dios.', 4),
('ref-tierra-josue-24-14-15', 'lec-tierra-prometida', 'Josué 24:14-15', 'Josué llama al pueblo a servir al Señor.', 5),
('ref-tierra-hebreos-4-8-10', 'lec-tierra-prometida', 'Hebreos 4:8-10', 'El descanso prometido apunta más allá de Canaán.', 6);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-tierra-1', 'lec-tierra-prometida', 'La tierra prometida era parte de la promesa hecha a Abraham.', 1),
('pt-tierra-2', 'lec-tierra-prometida', 'La incredulidad de Israel en el desierto mostró la necesidad de confiar en Dios.', 2),
('pt-tierra-3', 'lec-tierra-prometida', 'Dios levantó a Josué para guiar al pueblo después de Moisés.', 3),
('pt-tierra-4', 'lec-tierra-prometida', 'El cruce del Jordán mostró que Dios seguía abriendo camino para su pueblo.', 4),
('pt-tierra-5', 'lec-tierra-prometida', 'La tierra apunta hacia un descanso mayor que solo Dios puede dar plenamente.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-tierra-1', 'lec-tierra-prometida', '¿Por qué la tierra prometida era importante dentro de la promesa a Abraham?', 1),
('q-tierra-2', 'lec-tierra-prometida', '¿Qué nos enseña la incredulidad de Israel en Números 13–14?', 2),
('q-tierra-3', 'lec-tierra-prometida', '¿Cómo conecta Hebreos 4 la tierra prometida con un descanso mayor?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-tierra-prometida', 'book-numeros'),
('lec-tierra-prometida', 'book-deuteronomio'),
('lec-tierra-prometida', 'book-josue'),
('lec-tierra-prometida', 'book-hebreos');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-tierra-prometida', 'pas-numeros-13-14', 'contexto de incredulidad', 1),
('lec-tierra-prometida', 'pas-deuteronomio-31-7-8', 'transición de liderazgo', 2),
('lec-tierra-prometida', 'pas-josue-1-1-9', 'comisión de Josué', 3),
('lec-tierra-prometida', 'pas-josue-3-4', 'entrada a la tierra', 4),
('lec-tierra-prometida', 'pas-josue-24-14-15', 'llamado a fidelidad', 5),
('lec-tierra-prometida', 'pas-hebreos-4-8-10', 'descanso mayor', 6);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-tierra-prometida', 'eve-entrada-tierra-prometida');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-tierra-prometida', 'tem-tierra-prometida'),
('lec-tierra-prometida', 'tem-fe'),
('lec-tierra-prometida', 'tem-obediencia'),
('lec-tierra-prometida', 'tem-descanso'),
('lec-tierra-prometida', 'tem-fidelidad-de-dios');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-tierra-prometida', 'per-moises'),
('lec-tierra-prometida', 'per-josue'),
('lec-tierra-prometida', 'per-caleb'),
('lec-tierra-prometida', 'per-israelitas');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-tierra-prometida', 'lug-canaan'),
('lec-tierra-prometida', 'lug-jordan'),
('lec-tierra-prometida', 'lug-jerico'),
('lec-tierra-prometida', 'lug-gilgal');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-tierra-prometida', 'glo-tierra-prometida'),
('lec-tierra-prometida', 'glo-josue'),
('lec-tierra-prometida', 'glo-canaan'),
('lec-tierra-prometida', 'glo-descanso');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-tierra-prometida', 'vis-tierra-prometida');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-entrada-tierra-prometida', 'per-moises'),
('eve-entrada-tierra-prometida', 'per-josue'),
('eve-entrada-tierra-prometida', 'per-caleb'),
('eve-entrada-tierra-prometida', 'per-israelitas');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-entrada-tierra-prometida', 'lug-canaan'),
('eve-entrada-tierra-prometida', 'lug-jordan'),
('eve-entrada-tierra-prometida', 'lug-jerico'),
('eve-entrada-tierra-prometida', 'lug-gilgal');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-entrada-tierra-prometida', 'tem-tierra-prometida'),
('eve-entrada-tierra-prometida', 'tem-fe'),
('eve-entrada-tierra-prometida', 'tem-obediencia'),
('eve-entrada-tierra-prometida', 'tem-descanso'),
('eve-entrada-tierra-prometida', 'tem-fidelidad-de-dios');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-entrada-tierra-prometida', 'book-numeros'),
('eve-entrada-tierra-prometida', 'book-deuteronomio'),
('eve-entrada-tierra-prometida', 'book-josue'),
('eve-entrada-tierra-prometida', 'book-hebreos');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-entrada-tierra-prometida', 'pas-numeros-13-14', 'contexto de incredulidad', 1),
('eve-entrada-tierra-prometida', 'pas-josue-1-1-9', 'comisión de Josué', 2),
('eve-entrada-tierra-prometida', 'pas-josue-3-4', 'entrada a la tierra', 3),
('eve-entrada-tierra-prometida', 'pas-hebreos-4-8-10', 'descanso mayor', 4);