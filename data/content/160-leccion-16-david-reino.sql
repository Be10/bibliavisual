DELETE FROM lesson_visual_resources WHERE lesson_id = 'lec-david-y-reino';
DELETE FROM lesson_glossary WHERE lesson_id = 'lec-david-y-reino';
DELETE FROM lesson_places WHERE lesson_id = 'lec-david-y-reino';
DELETE FROM lesson_people WHERE lesson_id = 'lec-david-y-reino';
DELETE FROM lesson_topics WHERE lesson_id = 'lec-david-y-reino';
DELETE FROM lesson_events WHERE lesson_id = 'lec-david-y-reino';
DELETE FROM lesson_passages WHERE lesson_id = 'lec-david-y-reino';
DELETE FROM lesson_books WHERE lesson_id = 'lec-david-y-reino';
DELETE FROM lesson_questions WHERE lesson_id = 'lec-david-y-reino';
DELETE FROM lesson_points WHERE lesson_id = 'lec-david-y-reino';
DELETE FROM lesson_bible_refs WHERE lesson_id = 'lec-david-y-reino';

DELETE FROM event_passages WHERE event_id = 'eve-david-reino';
DELETE FROM event_books WHERE event_id = 'eve-david-reino';
DELETE FROM event_topics WHERE event_id = 'eve-david-reino';
DELETE FROM event_places WHERE event_id = 'eve-david-reino';
DELETE FROM event_people WHERE event_id = 'eve-david-reino';

UPDATE lessons
SET
  title = 'David y el reino',
  slug = 'david-y-el-reino',
  eyebrow = 'Lección 16 de 20 · 7–10 minutos',
  main_idea = 'Dios levantó a David como rey de Israel y prometió una descendencia real cuyo reino culmina en Cristo, el Hijo de David.',
  summary = 'La historia de David muestra el establecimiento del reino, la fidelidad de Dios y la promesa de un Rey definitivo que gobernará para siempre.',
  explanation = 'Después del período de los jueces y del reinado de Saúl, Dios levantó a David, un pastor de Belén, para ser rey sobre Israel. David no fue perfecto, pero fue llamado un hombre conforme al corazón de Dios porque dependía del Señor y recibió la promesa de una casa real. En 2 Samuel 7, Dios promete que la descendencia de David tendría un reino afirmado para siempre. Esta promesa se convierte en una línea central de la esperanza mesiánica: Israel esperaría un Rey justo, hijo de David, que gobernaría con justicia y traería bendición. El Nuevo Testamento presenta a Jesús como el Hijo de David, el Rey prometido cuyo reino no tendrá fin.',
  remember = 'El reino de David apunta hacia Cristo, el Rey prometido que gobierna con justicia y cuyo reino permanece para siempre.',
  application = 'La historia de David nos llama a confiar en el gobierno de Dios, a esperar al Rey verdadero y a vivir bajo la autoridad de Cristo con humildad y obediencia.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-david-y-reino';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-1-samuel-16', 'book-1-samuel', 16),
('chap-1-samuel-17', 'book-1-samuel', 17),
('chap-2-samuel-5', 'book-2-samuel', 5),
('chap-2-samuel-7', 'book-2-samuel', 7),
('chap-salmos-2', 'book-salmos', 2),
('chap-salmos-89', 'book-salmos', 89),
('chap-lucas-1', 'book-lucas', 1),
('chap-hechos-13', 'book-hechos', 13);

INSERT OR IGNORE INTO passages (id, display_reference, slug, book_id, start_chapter, start_verse, end_chapter, end_verse, summary, status) VALUES
('pas-1-samuel-16-1-13', '1 Samuel 16:1-13', '1-samuel-16-1-13', 'book-1-samuel', 16, 1, 16, 13, 'Dios escoge a David y Samuel lo unge como futuro rey.', 'Publicado básico'),
('pas-1-samuel-17', '1 Samuel 17', '1-samuel-17', 'book-1-samuel', 17, NULL, 17, NULL, 'David enfrenta a Goliat confiando en el nombre del Señor.', 'Publicado básico'),
('pas-2-samuel-5-1-5', '2 Samuel 5:1-5', '2-samuel-5-1-5', 'book-2-samuel', 5, 1, 5, 5, 'David es reconocido como rey sobre Israel.', 'Publicado básico'),
('pas-2-samuel-7-8-16', '2 Samuel 7:8-16', '2-samuel-7-8-16', 'book-2-samuel', 7, 8, 7, 16, 'Dios promete a David una casa, un reino y un trono afirmado para siempre.', 'Publicado básico'),
('pas-salmos-89-3-4', 'Salmo 89:3-4', 'salmo-89-3-4', 'book-salmos', 89, 3, 89, 4, 'El pacto con David es recordado como promesa de descendencia y trono.', 'Publicado básico'),
('pas-lucas-1-30-33', 'Lucas 1:30-33', 'lucas-1-30-33', 'book-lucas', 1, 30, 1, 33, 'El anuncio del nacimiento de Jesús lo presenta como heredero del trono de David.', 'Publicado básico'),
('pas-hechos-13-22-23', 'Hechos 13:22-23', 'hechos-13-22-23', 'book-hechos', 13, 22, 13, 23, 'Pablo conecta a David con Jesús como Salvador prometido.', 'Publicado básico');

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
('tem-reino', 'Reino', 'reino', 'Gobierno de Dios sobre su pueblo y sobre toda la creación.', 'Publicado básico'),
('tem-pacto-davidico', 'Pacto davídico', 'pacto-davidico', 'Promesa de Dios a David sobre una descendencia real y un reino permanente.', 'Publicado básico'),
('tem-mesias', 'Mesías', 'mesias', 'El Ungido prometido por Dios, cumplido en Jesús.', 'Publicado básico'),
('tem-rey', 'Rey', 'rey', 'Gobernante llamado a dirigir al pueblo conforme a la justicia y voluntad de Dios.', 'Publicado básico'),
('tem-fidelidad-de-dios', 'Fidelidad de Dios', 'fidelidad-de-dios', 'Seguridad de que Dios cumple lo que promete porque su carácter es fiel.', 'Publicado básico');

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
('per-david', 'David', 'david', 'Rey de Israel asociado con la promesa de un reino y una descendencia mesiánica.', 'Publicado básico'),
('per-samuel', 'Samuel', 'samuel', 'Profeta y juez que ungió a David y aparece en la transición hacia la monarquía.', 'Publicado básico'),
('per-saul', 'Saúl', 'saul', 'Primer rey de Israel, cuya desobediencia prepara el ascenso de David.', 'Publicado básico'),
('per-goliat', 'Goliat', 'goliat', 'Guerrero filisteo derrotado por David cuando este confió en el Señor.', 'Publicado básico'),
('per-jesus', 'Jesús', 'jesus', 'El Hijo de Dios, Mesías prometido y centro de la historia bíblica.', 'Publicado básico');

INSERT OR IGNORE INTO places (id, name, slug, place_type, summary, latitude, longitude, map_zoom, geographical_certainty, status) VALUES
('lug-belen', 'Belén', 'belen', 'Ciudad', 'Ciudad de David y lugar asociado con el nacimiento de Jesús.', 31.7054, 35.2024, 10, 'Alta / aproximada', 'Publicado básico'),
('lug-jerusalen', 'Jerusalén', 'jerusalen', 'Ciudad', 'Ciudad que llegó a ser centro del reino de David y de la adoración de Israel.', 31.7780, 35.2354, 10, 'Alta', 'Publicado básico'),
('lug-valle-ela', 'Valle de Ela', 'valle-de-ela', 'Valle', 'Lugar asociado con el enfrentamiento entre David y Goliat. Su ubicación se presenta de forma aproximada.', 31.6900, 34.9500, 9, 'Aproximada', 'Publicado básico'),
('lug-israel', 'Israel', 'israel', 'Región / reino', 'Territorio y pueblo vinculado con el reino de David.', 31.5000, 35.0000, 7, 'Aproximada', 'Publicado básico');

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
('glo-david', 'David', 'david', 'Rey de Israel y receptor de la promesa de una descendencia real.', 'Publicado básico'),
('glo-pacto-davidico', 'Pacto davídico', 'pacto-davidico', 'Promesa de Dios de afirmar la casa, el trono y el reino de David.', 'Publicado básico'),
('glo-hijo-de-david', 'Hijo de David', 'hijo-de-david', 'Título mesiánico que señala al Rey prometido de la línea de David, cumplido en Jesús.', 'Publicado básico'),
('glo-reino', 'Reino', 'reino', 'Gobierno de Dios manifestado en su pueblo y cumplido plenamente en Cristo.', 'Publicado básico');

INSERT OR IGNORE INTO events (id, title, slug, event_type, summary, description, biblical_period, approximate_date, chronological_order, temporal_certainty, geographical_certainty, appears_on_timeline, appears_on_map, status) VALUES
('eve-david-reino', 'David y el reino', 'david-y-el-reino', 'Monarquía / promesa mesiánica', 'Dios levanta a David como rey y promete una descendencia cuyo reino será afirmado para siempre.', 'El reinado de David marca una etapa clave en la historia bíblica. Dios establece el reino en Israel y anuncia una promesa real que apunta hacia el Mesías, el Hijo de David, cumplido en Jesús.', 'Monarquía unida', 'Después de Saúl y antes de Salomón', 16, 'Aproximada', 'Aproximada', 1, 1, 'Publicado básico');

INSERT OR IGNORE INTO visual_resources (id, title, slug, resource_type, description, alt_text, url, status) VALUES
('vis-david-reino', 'David y el reino prometido', 'david-y-el-reino-prometido', 'Infografía', 'Recurso visual para conectar a David, el pacto davídico, el reino y el cumplimiento en Cristo.', 'Infografía sobre David, el pacto davídico y Jesús como Hijo de David.', NULL, 'Idea');

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-david-1-samuel-16-1-13', 'lec-david-y-reino', '1 Samuel 16:1-13', 'Dios escoge a David y mira el corazón.', 1),
('ref-david-1-samuel-17', 'lec-david-y-reino', '1 Samuel 17', 'David enfrenta a Goliat confiando en el Señor.', 2),
('ref-david-2-samuel-5-1-5', 'lec-david-y-reino', '2 Samuel 5:1-5', 'David llega a ser rey sobre Israel.', 3),
('ref-david-2-samuel-7-8-16', 'lec-david-y-reino', '2 Samuel 7:8-16', 'Dios promete una casa y un reino permanente a David.', 4),
('ref-david-salmos-89-3-4', 'lec-david-y-reino', 'Salmo 89:3-4', 'El pacto con David es recordado en la adoración de Israel.', 5),
('ref-david-lucas-1-30-33', 'lec-david-y-reino', 'Lucas 1:30-33', 'Jesús es anunciado como heredero del trono de David.', 6),
('ref-david-hechos-13-22-23', 'lec-david-y-reino', 'Hechos 13:22-23', 'Jesús es presentado como Salvador de la descendencia de David.', 7);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-david-1', 'lec-david-y-reino', 'Dios escogió a David no por apariencia humana, sino conforme a su propósito.', 1),
('pt-david-2', 'lec-david-y-reino', 'David mostró confianza en el Señor frente a enemigos más fuertes.', 2),
('pt-david-3', 'lec-david-y-reino', 'El reino de David trajo una etapa clave de unidad y dirección para Israel.', 3),
('pt-david-4', 'lec-david-y-reino', 'El pacto davídico prometió una descendencia real y un reino permanente.', 4),
('pt-david-5', 'lec-david-y-reino', 'Jesús cumple la esperanza del Hijo de David y reina para siempre.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-david-1', 'lec-david-y-reino', '¿Qué enseña la elección de David sobre la forma en que Dios mira a las personas?', 1),
('q-david-2', 'lec-david-y-reino', '¿Por qué el pacto con David es importante para entender la esperanza mesiánica?', 2),
('q-david-3', 'lec-david-y-reino', '¿Cómo nos ayuda esta lección a ver a Jesús como Rey?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-david-y-reino', 'book-1-samuel'),
('lec-david-y-reino', 'book-2-samuel'),
('lec-david-y-reino', 'book-salmos'),
('lec-david-y-reino', 'book-lucas'),
('lec-david-y-reino', 'book-hechos');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-david-y-reino', 'pas-1-samuel-16-1-13', 'elección de David', 1),
('lec-david-y-reino', 'pas-1-samuel-17', 'confianza en Dios', 2),
('lec-david-y-reino', 'pas-2-samuel-5-1-5', 'reinado', 3),
('lec-david-y-reino', 'pas-2-samuel-7-8-16', 'pacto davídico', 4),
('lec-david-y-reino', 'pas-salmos-89-3-4', 'promesa recordada', 5),
('lec-david-y-reino', 'pas-lucas-1-30-33', 'cumplimiento en Cristo', 6),
('lec-david-y-reino', 'pas-hechos-13-22-23', 'anuncio apostólico', 7);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-david-y-reino', 'eve-david-reino');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-david-y-reino', 'tem-reino'),
('lec-david-y-reino', 'tem-pacto-davidico'),
('lec-david-y-reino', 'tem-mesias'),
('lec-david-y-reino', 'tem-rey'),
('lec-david-y-reino', 'tem-fidelidad-de-dios');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-david-y-reino', 'per-david'),
('lec-david-y-reino', 'per-samuel'),
('lec-david-y-reino', 'per-saul'),
('lec-david-y-reino', 'per-goliat'),
('lec-david-y-reino', 'per-jesus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-david-y-reino', 'lug-belen'),
('lec-david-y-reino', 'lug-jerusalen'),
('lec-david-y-reino', 'lug-valle-ela'),
('lec-david-y-reino', 'lug-israel');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-david-y-reino', 'glo-david'),
('lec-david-y-reino', 'glo-pacto-davidico'),
('lec-david-y-reino', 'glo-hijo-de-david'),
('lec-david-y-reino', 'glo-reino');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-david-y-reino', 'vis-david-reino');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-david-reino', 'per-david'),
('eve-david-reino', 'per-samuel'),
('eve-david-reino', 'per-saul'),
('eve-david-reino', 'per-goliat'),
('eve-david-reino', 'per-jesus');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-david-reino', 'lug-belen'),
('eve-david-reino', 'lug-jerusalen'),
('eve-david-reino', 'lug-valle-ela'),
('eve-david-reino', 'lug-israel');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-david-reino', 'tem-reino'),
('eve-david-reino', 'tem-pacto-davidico'),
('eve-david-reino', 'tem-mesias'),
('eve-david-reino', 'tem-rey'),
('eve-david-reino', 'tem-fidelidad-de-dios');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-david-reino', 'book-1-samuel'),
('eve-david-reino', 'book-2-samuel'),
('eve-david-reino', 'book-salmos'),
('eve-david-reino', 'book-lucas'),
('eve-david-reino', 'book-hechos');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-david-reino', 'pas-1-samuel-16-1-13', 'elección de David', 1),
('eve-david-reino', 'pas-1-samuel-17', 'confianza en Dios', 2),
('eve-david-reino', 'pas-2-samuel-5-1-5', 'reinado', 3),
('eve-david-reino', 'pas-2-samuel-7-8-16', 'pacto davídico', 4),
('eve-david-reino', 'pas-lucas-1-30-33', 'cumplimiento en Cristo', 5),
('eve-david-reino', 'pas-hechos-13-22-23', 'anuncio apostólico', 6);