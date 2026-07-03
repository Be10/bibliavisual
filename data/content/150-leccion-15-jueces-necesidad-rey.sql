DELETE FROM lesson_visual_resources WHERE lesson_id = 'lec-jueces-necesidad-rey';
DELETE FROM lesson_glossary WHERE lesson_id = 'lec-jueces-necesidad-rey';
DELETE FROM lesson_places WHERE lesson_id = 'lec-jueces-necesidad-rey';
DELETE FROM lesson_people WHERE lesson_id = 'lec-jueces-necesidad-rey';
DELETE FROM lesson_topics WHERE lesson_id = 'lec-jueces-necesidad-rey';
DELETE FROM lesson_events WHERE lesson_id = 'lec-jueces-necesidad-rey';
DELETE FROM lesson_passages WHERE lesson_id = 'lec-jueces-necesidad-rey';
DELETE FROM lesson_books WHERE lesson_id = 'lec-jueces-necesidad-rey';
DELETE FROM lesson_questions WHERE lesson_id = 'lec-jueces-necesidad-rey';
DELETE FROM lesson_points WHERE lesson_id = 'lec-jueces-necesidad-rey';
DELETE FROM lesson_bible_refs WHERE lesson_id = 'lec-jueces-necesidad-rey';

DELETE FROM event_passages WHERE event_id = 'eve-jueces-necesidad-rey';
DELETE FROM event_books WHERE event_id = 'eve-jueces-necesidad-rey';
DELETE FROM event_topics WHERE event_id = 'eve-jueces-necesidad-rey';
DELETE FROM event_places WHERE event_id = 'eve-jueces-necesidad-rey';
DELETE FROM event_people WHERE event_id = 'eve-jueces-necesidad-rey';

UPDATE lessons
SET
  title = 'Los jueces y la necesidad de un rey',
  slug = 'los-jueces-y-la-necesidad-de-un-rey',
  eyebrow = 'Lección 15 de 20 · 7–10 minutos',
  main_idea = 'El período de los jueces muestra el ciclo del pecado de Israel y revela la necesidad de un rey justo que gobierne conforme al corazón de Dios.',
  summary = 'Después de entrar en la tierra, Israel cayó repetidamente en idolatría, opresión y clamor, y Dios levantó jueces para liberar al pueblo por misericordia.',
  explanation = 'El libro de Jueces muestra una etapa oscura y repetitiva: Israel se aparta del Señor, cae bajo opresión, clama por ayuda y Dios levanta un juez para liberar. Pero después de la liberación, el pueblo vuelve a apartarse. Este ciclo revela que el problema de Israel no era solo político o militar; era espiritual. La frase “cada uno hacía lo que bien le parecía” resume la falta de dirección fiel. Los jueces fueron instrumentos reales de misericordia, pero ninguno pudo transformar el corazón del pueblo de manera definitiva. Esta etapa prepara la transición hacia la monarquía y la esperanza de un rey justo. Aun así, la Biblia mostrará que ni siquiera los reyes humanos serán suficientes. La esperanza final apunta a Cristo, el Rey perfecto.',
  remember = 'Los jueces muestran la misericordia de Dios en medio del pecado de su pueblo y preparan la esperanza de un Rey perfecto.',
  application = 'Esta lección nos llama a reconocer los ciclos de pecado, volver al Señor con arrepentimiento real y mirar a Cristo como el Rey que gobierna y restaura.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-jueces-necesidad-rey';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-jueces-2', 'book-jueces', 2),
('chap-jueces-6', 'book-jueces', 6),
('chap-jueces-7', 'book-jueces', 7),
('chap-jueces-13', 'book-jueces', 13),
('chap-jueces-14', 'book-jueces', 14),
('chap-jueces-15', 'book-jueces', 15),
('chap-jueces-16', 'book-jueces', 16),
('chap-jueces-21', 'book-jueces', 21),
('chap-rut-4', 'book-rut', 4),
('chap-1-samuel-8', 'book-1-samuel', 8),
('chap-mateo-1', 'book-mateo', 1);

INSERT OR IGNORE INTO passages (id, display_reference, slug, book_id, start_chapter, start_verse, end_chapter, end_verse, summary, status) VALUES
('pas-jueces-2-10-19', 'Jueces 2:10-19', 'jueces-2-10-19', 'book-jueces', 2, 10, 2, 19, 'Resumen del ciclo de infidelidad, opresión, clamor y liberación durante el período de los jueces.', 'Publicado básico'),
('pas-jueces-6-7', 'Jueces 6–7', 'jueces-6-7', 'book-jueces', 6, NULL, 7, NULL, 'Dios llama a Gedeón y libra a Israel mostrando que la victoria depende del Señor.', 'Publicado básico'),
('pas-jueces-13-16', 'Jueces 13–16', 'jueces-13-16', 'book-jueces', 13, NULL, 16, NULL, 'Historia de Sansón, marcada por fuerza, debilidad y conflicto con los filisteos.', 'Publicado básico'),
('pas-jueces-21-25', 'Jueces 21:25', 'jueces-21-25', 'book-jueces', 21, 25, 21, 25, 'Resumen de la falta de rey y dirección espiritual en Israel.', 'Publicado básico'),
('pas-rut-4-13-22', 'Rut 4:13-22', 'rut-4-13-22', 'book-rut', 4, 13, 4, 22, 'La genealogía conecta la historia de Rut con David.', 'Publicado básico'),
('pas-1-samuel-8-1-22', '1 Samuel 8:1-22', '1-samuel-8-1-22', 'book-1-samuel', 8, 1, 8, 22, 'Israel pide un rey, mostrando la transición hacia la monarquía.', 'Publicado básico'),
('pas-mateo-1-1-17', 'Mateo 1:1-17', 'mateo-1-1-17', 'book-mateo', 1, 1, 1, 17, 'La genealogía de Jesús conecta la esperanza real con David y el Mesías.', 'Publicado básico');

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
('tem-jueces', 'Jueces', 'jueces', 'Líderes levantados por Dios para liberar a Israel durante un período de infidelidad recurrente.', 'Publicado básico'),
('tem-pecado', 'Pecado', 'pecado', 'Rebelión contra Dios que rompe la relación con Él y afecta toda la vida humana.', 'Publicado básico'),
('tem-arrepentimiento', 'Arrepentimiento', 'arrepentimiento', 'Volverse del pecado hacia Dios con reconocimiento, fe y cambio de dirección.', 'Publicado básico'),
('tem-liberacion', 'Liberación', 'liberacion', 'Acción de Dios al rescatar a su pueblo de esclavitud u opresión.', 'Publicado básico'),
('tem-reino', 'Reino', 'reino', 'Gobierno de Dios sobre su pueblo y sobre toda la creación.', 'Publicado básico'),
('tem-mesias', 'Mesías', 'mesias', 'El Ungido prometido por Dios, cumplido en Jesús.', 'Publicado básico');

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
('per-jueces-israel', 'Los jueces de Israel', 'jueces-de-israel', 'Líderes levantados por Dios para liberar a Israel durante el período de los jueces.', 'Publicado básico'),
('per-gedeon', 'Gedeón', 'gedeon', 'Juez usado por Dios para librar a Israel de Madián, mostrando que la victoria depende del Señor.', 'Publicado básico'),
('per-sanson', 'Sansón', 'sanson', 'Juez de Israel conocido por su fuerza y por su conflicto con los filisteos.', 'Publicado básico'),
('per-samuel', 'Samuel', 'samuel', 'Profeta y juez que aparece en la transición hacia la monarquía de Israel.', 'Publicado básico'),
('per-david', 'David', 'david', 'Rey de Israel asociado con la promesa de un reino y una descendencia mesiánica.', 'Publicado básico'),
('per-jesus', 'Jesús', 'jesus', 'El Hijo de Dios, Mesías prometido y centro de la historia bíblica.', 'Publicado básico');

INSERT OR IGNORE INTO places (id, name, slug, place_type, summary, latitude, longitude, map_zoom, geographical_certainty, status) VALUES
('lug-canaan', 'Canaán', 'canaan', 'Región', 'Tierra prometida por Dios a Abraham y a su descendencia.', 31.5000, 35.0000, 7, 'Aproximada', 'Publicado básico'),
('lug-israel', 'Israel', 'israel', 'Región / pueblo en la tierra', 'Territorio y pueblo vinculados con las tribus de Israel en la tierra prometida.', 31.5000, 35.0000, 7, 'Aproximada', 'Publicado básico'),
('lug-madian', 'Madián', 'madian', 'Región', 'Región asociada con enemigos de Israel en la historia de Gedeón y con etapas anteriores de Moisés.', NULL, NULL, NULL, 'Aproximada / debatida', 'Publicado básico'),
('lug-silo', 'Silo', 'silo', 'Lugar / ciudad', 'Lugar asociado con el culto de Israel antes de la consolidación de la monarquía.', 32.0550, 35.2890, 10, 'Aproximada', 'Publicado básico');

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
('glo-jueces', 'Jueces', 'jueces', 'Líderes levantados por Dios para liberar a Israel durante una etapa de infidelidad recurrente.', 'Publicado básico'),
('glo-ciclo-de-los-jueces', 'Ciclo de los jueces', 'ciclo-de-los-jueces', 'Patrón de pecado, opresión, clamor y liberación que se repite en el libro de Jueces.', 'Publicado básico'),
('glo-rey', 'Rey', 'rey', 'Gobernante que dirige al pueblo; en la Biblia, la esperanza apunta al Rey perfecto prometido por Dios.', 'Publicado básico'),
('glo-apostasia', 'Apostasía', 'apostasia', 'Apartarse de la fidelidad al Señor para seguir otros caminos o dioses.', 'Publicado básico');

INSERT OR IGNORE INTO events (id, title, slug, event_type, summary, description, biblical_period, approximate_date, chronological_order, temporal_certainty, geographical_certainty, appears_on_timeline, appears_on_map, status) VALUES
('eve-jueces-necesidad-rey', 'Los jueces y la necesidad de un rey', 'los-jueces-y-la-necesidad-de-un-rey', 'Infidelidad / liberación / esperanza real', 'Israel vive un ciclo de pecado y liberación que revela la necesidad de un rey justo.', 'El período de los jueces muestra la misericordia de Dios al levantar libertadores, pero también revela la profundidad del pecado del pueblo. La falta de dirección prepara la transición hacia la monarquía y, finalmente, hacia la esperanza mesiánica.', 'Jueces', 'Después de la entrada a la tierra y antes de la monarquía', 15, 'Aproximada', 'Aproximada', 1, 1, 'Publicado básico');

INSERT OR IGNORE INTO visual_resources (id, title, slug, resource_type, description, alt_text, url, status) VALUES
('vis-jueces-necesidad-rey', 'El ciclo de los jueces', 'el-ciclo-de-los-jueces', 'Infografía', 'Recurso visual para mostrar el ciclo de pecado, opresión, clamor, liberación y recaída, junto con la necesidad de un rey justo.', 'Infografía sobre el ciclo de los jueces y la necesidad de un rey.', NULL, 'Idea');

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-jueces-jueces-2-10-19', 'lec-jueces-necesidad-rey', 'Jueces 2:10-19', 'Resumen del ciclo espiritual del período.', 1),
('ref-jueces-jueces-6-7', 'lec-jueces-necesidad-rey', 'Jueces 6–7', 'Gedeón muestra que la liberación viene del Señor.', 2),
('ref-jueces-jueces-13-16', 'lec-jueces-necesidad-rey', 'Jueces 13–16', 'Sansón muestra fuerza, debilidad y necesidad de gracia.', 3),
('ref-jueces-jueces-21-25', 'lec-jueces-necesidad-rey', 'Jueces 21:25', 'Resumen de la falta de dirección en Israel.', 4),
('ref-jueces-rut-4-13-22', 'lec-jueces-necesidad-rey', 'Rut 4:13-22', 'La línea de David aparece en el contexto posterior a los jueces.', 5),
('ref-jueces-1-samuel-8-1-22', 'lec-jueces-necesidad-rey', '1 Samuel 8:1-22', 'Israel pide un rey.', 6),
('ref-jueces-mateo-1-1-17', 'lec-jueces-necesidad-rey', 'Mateo 1:1-17', 'La línea davídica culmina en Cristo.', 7);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-jueces-1', 'lec-jueces-necesidad-rey', 'Después de entrar en la tierra, Israel cayó repetidamente en infidelidad.', 1),
('pt-jueces-2', 'lec-jueces-necesidad-rey', 'Dios levantó jueces como expresión de misericordia y liberación.', 2),
('pt-jueces-3', 'lec-jueces-necesidad-rey', 'El ciclo de los jueces muestra que el problema del pueblo era profundamente espiritual.', 3),
('pt-jueces-4', 'lec-jueces-necesidad-rey', 'La falta de un rey justo reveló la necesidad de dirección conforme a Dios.', 4),
('pt-jueces-5', 'lec-jueces-necesidad-rey', 'Esta etapa prepara la esperanza de David y, finalmente, de Cristo como Rey perfecto.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-jueces-1', 'lec-jueces-necesidad-rey', '¿Qué patrón se repite durante el período de los jueces?', 1),
('q-jueces-2', 'lec-jueces-necesidad-rey', '¿Por qué los jueces muestran tanto la misericordia de Dios como la gravedad del pecado?', 2),
('q-jueces-3', 'lec-jueces-necesidad-rey', '¿Cómo prepara esta etapa la esperanza de un rey justo?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-jueces-necesidad-rey', 'book-jueces'),
('lec-jueces-necesidad-rey', 'book-rut'),
('lec-jueces-necesidad-rey', 'book-1-samuel'),
('lec-jueces-necesidad-rey', 'book-mateo');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-jueces-necesidad-rey', 'pas-jueces-2-10-19', 'panorama', 1),
('lec-jueces-necesidad-rey', 'pas-jueces-6-7', 'ejemplo de liberación', 2),
('lec-jueces-necesidad-rey', 'pas-jueces-13-16', 'ejemplo de juez', 3),
('lec-jueces-necesidad-rey', 'pas-jueces-21-25', 'diagnóstico espiritual', 4),
('lec-jueces-necesidad-rey', 'pas-rut-4-13-22', 'conexión con David', 5),
('lec-jueces-necesidad-rey', 'pas-1-samuel-8-1-22', 'transición a monarquía', 6),
('lec-jueces-necesidad-rey', 'pas-mateo-1-1-17', 'cumplimiento mesiánico', 7);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-jueces-necesidad-rey', 'eve-jueces-necesidad-rey');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-jueces-necesidad-rey', 'tem-jueces'),
('lec-jueces-necesidad-rey', 'tem-pecado'),
('lec-jueces-necesidad-rey', 'tem-arrepentimiento'),
('lec-jueces-necesidad-rey', 'tem-liberacion'),
('lec-jueces-necesidad-rey', 'tem-reino'),
('lec-jueces-necesidad-rey', 'tem-mesias');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-jueces-necesidad-rey', 'per-jueces-israel'),
('lec-jueces-necesidad-rey', 'per-gedeon'),
('lec-jueces-necesidad-rey', 'per-sanson'),
('lec-jueces-necesidad-rey', 'per-samuel'),
('lec-jueces-necesidad-rey', 'per-david'),
('lec-jueces-necesidad-rey', 'per-jesus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-jueces-necesidad-rey', 'lug-canaan'),
('lec-jueces-necesidad-rey', 'lug-israel'),
('lec-jueces-necesidad-rey', 'lug-madian'),
('lec-jueces-necesidad-rey', 'lug-silo');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-jueces-necesidad-rey', 'glo-jueces'),
('lec-jueces-necesidad-rey', 'glo-ciclo-de-los-jueces'),
('lec-jueces-necesidad-rey', 'glo-rey'),
('lec-jueces-necesidad-rey', 'glo-apostasia');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-jueces-necesidad-rey', 'vis-jueces-necesidad-rey');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-jueces-necesidad-rey', 'per-jueces-israel'),
('eve-jueces-necesidad-rey', 'per-gedeon'),
('eve-jueces-necesidad-rey', 'per-sanson'),
('eve-jueces-necesidad-rey', 'per-samuel'),
('eve-jueces-necesidad-rey', 'per-david'),
('eve-jueces-necesidad-rey', 'per-jesus');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-jueces-necesidad-rey', 'lug-canaan'),
('eve-jueces-necesidad-rey', 'lug-israel'),
('eve-jueces-necesidad-rey', 'lug-madian'),
('eve-jueces-necesidad-rey', 'lug-silo');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-jueces-necesidad-rey', 'tem-jueces'),
('eve-jueces-necesidad-rey', 'tem-pecado'),
('eve-jueces-necesidad-rey', 'tem-arrepentimiento'),
('eve-jueces-necesidad-rey', 'tem-liberacion'),
('eve-jueces-necesidad-rey', 'tem-reino'),
('eve-jueces-necesidad-rey', 'tem-mesias');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-jueces-necesidad-rey', 'book-jueces'),
('eve-jueces-necesidad-rey', 'book-rut'),
('eve-jueces-necesidad-rey', 'book-1-samuel'),
('eve-jueces-necesidad-rey', 'book-mateo');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-jueces-necesidad-rey', 'pas-jueces-2-10-19', 'panorama', 1),
('eve-jueces-necesidad-rey', 'pas-jueces-21-25', 'diagnóstico espiritual', 2),
('eve-jueces-necesidad-rey', 'pas-rut-4-13-22', 'conexión con David', 3),
('eve-jueces-necesidad-rey', 'pas-1-samuel-8-1-22', 'transición a monarquía', 4),
('eve-jueces-necesidad-rey', 'pas-mateo-1-1-17', 'cumplimiento mesiánico', 5);