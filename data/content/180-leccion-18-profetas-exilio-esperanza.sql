DELETE FROM lesson_visual_resources WHERE lesson_id = 'lec-profetas-exilio-esperanza';
DELETE FROM lesson_glossary WHERE lesson_id = 'lec-profetas-exilio-esperanza';
DELETE FROM lesson_places WHERE lesson_id = 'lec-profetas-exilio-esperanza';
DELETE FROM lesson_people WHERE lesson_id = 'lec-profetas-exilio-esperanza';
DELETE FROM lesson_topics WHERE lesson_id = 'lec-profetas-exilio-esperanza';
DELETE FROM lesson_events WHERE lesson_id = 'lec-profetas-exilio-esperanza';
DELETE FROM lesson_passages WHERE lesson_id = 'lec-profetas-exilio-esperanza';
DELETE FROM lesson_books WHERE lesson_id = 'lec-profetas-exilio-esperanza';
DELETE FROM lesson_questions WHERE lesson_id = 'lec-profetas-exilio-esperanza';
DELETE FROM lesson_points WHERE lesson_id = 'lec-profetas-exilio-esperanza';
DELETE FROM lesson_bible_refs WHERE lesson_id = 'lec-profetas-exilio-esperanza';

DELETE FROM event_passages WHERE event_id = 'eve-profetas-exilio-esperanza';
DELETE FROM event_books WHERE event_id = 'eve-profetas-exilio-esperanza';
DELETE FROM event_topics WHERE event_id = 'eve-profetas-exilio-esperanza';
DELETE FROM event_places WHERE event_id = 'eve-profetas-exilio-esperanza';
DELETE FROM event_people WHERE event_id = 'eve-profetas-exilio-esperanza';

UPDATE lessons
SET
  title = 'Profetas, exilio y esperanza',
  slug = 'profetas-exilio-y-esperanza',
  eyebrow = 'Lección 18 de 20 · 7–10 minutos',
  main_idea = 'Los profetas anunciaron juicio por el pecado de Israel, pero también proclamaron esperanza: Dios restauraría a su pueblo, daría un nuevo pacto y enviaría al Mesías.',
  summary = 'El exilio muestra la seriedad del pecado y la fidelidad de Dios a sus advertencias; los profetas muestran que el juicio no cancela la esperanza redentora.',
  explanation = 'Después del reino unido, Israel y Judá se apartaron repetidamente del Señor. La idolatría, la injusticia y la falsa confianza religiosa llevaron al juicio anunciado por los profetas. Israel fue llevado al exilio por Asiria y Judá por Babilonia. El exilio fue una crisis profunda: la tierra, la ciudad, el templo y el reino parecían perdidos. Sin embargo, los profetas no solo anunciaron juicio. También anunciaron esperanza: un remanente, un nuevo pacto, un corazón renovado, el regreso de la presencia de Dios y la venida del Siervo y Rey prometido. Esta etapa prepara directamente la expectativa del Mesías y muestra que Dios disciplina a su pueblo, pero no abandona su plan redentor.',
  remember = 'El juicio de Dios es real, pero su fidelidad sostiene la esperanza de restauración y apunta hacia el nuevo pacto en Cristo.',
  application = 'Esta lección nos llama a tomar en serio el pecado, escuchar la palabra de Dios y abrazar la esperanza que Él mismo promete en medio del quebranto.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-profetas-exilio-esperanza';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-2-reyes-17', 'book-2-reyes', 17),
('chap-2-reyes-25', 'book-2-reyes', 25),
('chap-isaias-9', 'book-isaias', 9),
('chap-isaias-53', 'book-isaias', 53),
('chap-jeremias-31', 'book-jeremias', 31),
('chap-ezequiel-36', 'book-ezequiel', 36),
('chap-daniel-7', 'book-daniel', 7),
('chap-esdras-1', 'book-esdras', 1);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
('pas-2-reyes-17-6-23', '2 Reyes 17:6-23', '2-reyes-17-6-23', 'book-2-reyes', 17, 6, 17, 23, 'Caída del reino del norte y explicación espiritual del exilio de Israel.', 'Publicado básico'),
('pas-2-reyes-25-1-21', '2 Reyes 25:1-21', '2-reyes-25-1-21', 'book-2-reyes', 25, 1, 25, 21, 'Caída de Jerusalén, destrucción del templo y exilio de Judá.', 'Publicado básico'),
('pas-isaias-9-1-7', 'Isaías 9:1-7', 'isaias-9-1-7', 'book-isaias', 9, 1, 9, 7, 'Promesa de un niño y rey cuyo gobierno traerá luz y paz.', 'Publicado básico'),
('pas-isaias-53-1-12', 'Isaías 53:1-12', 'isaias-53-1-12', 'book-isaias', 53, 1, 53, 12, 'El Siervo sufriente lleva el pecado de muchos.', 'Publicado básico'),
('pas-jeremias-31-31-34', 'Jeremías 31:31-34', 'jeremias-31-31-34', 'book-jeremias', 31, 31, 31, 34, 'Promesa del nuevo pacto, con la ley escrita en el corazón y perdón verdadero.', 'Publicado básico'),
('pas-ezequiel-36-24-28', 'Ezequiel 36:24-28', 'ezequiel-36-24-28', 'book-ezequiel', 36, 24, 36, 28, 'Dios promete limpiar a su pueblo y darle un corazón nuevo y su Espíritu.', 'Publicado básico'),
('pas-daniel-7-13-14', 'Daniel 7:13-14', 'daniel-7-13-14', 'book-daniel', 7, 13, 7, 14, 'Visión del Hijo del Hombre recibiendo dominio eterno.', 'Publicado básico'),
('pas-esdras-1-1-4', 'Esdras 1:1-4', 'esdras-1-1-4', 'book-esdras', 1, 1, 1, 4, 'Dios mueve el regreso del exilio y la reconstrucción del templo.', 'Publicado básico');

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
('tem-profetas', 'Profetas', 'profetas', 'Mensajeros de Dios que llamaron al arrepentimiento y anunciaron juicio y esperanza.', 'Publicado básico'),
('tem-exilio', 'Exilio', 'exilio', 'Juicio histórico en el que Israel y Judá fueron llevados fuera de la tierra por su infidelidad.', 'Publicado básico'),
('tem-juicio', 'Juicio', 'juicio', 'Acción justa de Dios al confrontar y castigar el pecado.', 'Publicado básico'),
('tem-esperanza', 'Esperanza', 'esperanza', 'Confianza en las promesas futuras de Dios aun en medio del dolor y el juicio.', 'Publicado básico'),
('tem-nuevo-pacto', 'Nuevo pacto', 'nuevo-pacto', 'Promesa de una relación renovada con Dios cumplida por medio de Cristo.', 'Publicado básico'),
('tem-mesias', 'Mesías', 'mesias', 'El Ungido prometido por Dios, cumplido en Jesús.', 'Publicado básico'),
('tem-restauracion', 'Restauración', 'restauracion', 'Obra de Dios al renovar, reunir y sanar a su pueblo conforme a sus promesas.', 'Publicado básico');

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
('per-profetas', 'Los profetas', 'profetas', 'Mensajeros de Dios que llamaron al arrepentimiento y anunciaron esperanza.', 'Publicado básico'),
('per-isaias', 'Isaías', 'isaias', 'Profeta que anunció juicio, esperanza y la venida del Siervo del Señor.', 'Publicado básico'),
('per-jeremias', 'Jeremías', 'jeremias', 'Profeta que anunció el juicio sobre Judá y la promesa del nuevo pacto.', 'Publicado básico'),
('per-ezequiel', 'Ezequiel', 'ezequiel', 'Profeta del exilio que habló de la gloria de Dios y la restauración futura.', 'Publicado básico'),
('per-daniel', 'Daniel', 'daniel', 'Siervo fiel en el exilio que recibió visiones sobre el reino de Dios.', 'Publicado básico'),
('per-remanente', 'El remanente fiel', 'remanente-fiel', 'Grupo preservado por Dios en medio del juicio y la restauración.', 'Publicado básico'),
('per-jesus', 'Jesús', 'jesus', 'El Hijo de Dios, Mesías prometido y centro de la historia bíblica.', 'Publicado básico');

INSERT OR IGNORE INTO places (
  id, name, slug, place_type, summary, latitude, longitude, map_zoom,
  geographical_certainty, status
) VALUES
('lug-jerusalen', 'Jerusalén', 'jerusalen', 'Ciudad', 'Ciudad central en la historia bíblica, relacionada con el templo, Jesús y la iglesia primitiva.', 31.7780, 35.2354, 10, 'Alta', 'Publicado básico'),
('lug-babilonia', 'Babilonia', 'babilonia', 'Ciudad / imperio', 'Potencia asociada con el exilio de Judá y la caída de Jerusalén.', 32.5364, 44.4200, 8, 'Alta / aproximada', 'Publicado básico'),
('lug-asiria', 'Asiria', 'asiria', 'Imperio / región', 'Potencia asociada con el exilio del reino del norte de Israel.', 36.3667, 43.1500, 6, 'Aproximada', 'Publicado básico'),
('lug-juda', 'Judá', 'juda', 'Reino / región', 'Reino del sur que fue llevado al exilio en Babilonia.', 31.7000, 35.0000, 7, 'Aproximada', 'Publicado básico'),
('lug-israel-norte', 'Reino del norte de Israel', 'reino-del-norte-de-israel', 'Reino / región', 'Reino del norte llevado al exilio por Asiria.', 32.5000, 35.2000, 7, 'Aproximada', 'Publicado básico');

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
('glo-profetas', 'Profetas', 'profetas', 'Mensajeros de Dios que comunicaban su palabra al pueblo.', 'Publicado básico'),
('glo-exilio', 'Exilio', 'exilio', 'Salida forzada de la tierra como juicio por la infidelidad del pueblo.', 'Publicado básico'),
('glo-nuevo-pacto', 'Nuevo pacto', 'nuevo-pacto', 'Promesa de perdón y renovación interior cumplida por medio de Cristo.', 'Publicado básico'),
('glo-remanente', 'Remanente', 'remanente', 'Pueblo preservado por Dios en medio del juicio.', 'Publicado básico'),
('glo-siervo-sufriente', 'Siervo sufriente', 'siervo-sufriente', 'Figura profética de Isaías que carga con el pecado de muchos y apunta a Cristo.', 'Publicado básico');

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-profetas-exilio-esperanza',
  'Profetas, exilio y esperanza',
  'profetas-exilio-y-esperanza',
  'Juicio / esperanza',
  'Los profetas anuncian juicio por la infidelidad de Israel y esperanza de restauración, nuevo pacto y Mesías.',
  'El exilio muestra la seriedad del pecado y la fidelidad de Dios a su palabra. Sin embargo, los profetas anuncian que Dios restaurará a su pueblo, dará un nuevo corazón y enviará al Mesías prometido.',
  'Reino dividido y exilio',
  'Desde el reino dividido hasta el regreso del exilio',
  18,
  'Aproximada',
  'Aproximada',
  1,
  1,
  'Publicado básico'
);

UPDATE events
SET
  title = 'Profetas, exilio y esperanza',
  slug = 'profetas-exilio-y-esperanza',
  event_type = 'Juicio / esperanza',
  summary = 'Los profetas anuncian juicio por la infidelidad de Israel y esperanza de restauración, nuevo pacto y Mesías.',
  description = 'El exilio muestra la seriedad del pecado y la fidelidad de Dios a su palabra. Sin embargo, los profetas anuncian que Dios restaurará a su pueblo, dará un nuevo corazón y enviará al Mesías prometido.',
  biblical_period = 'Reino dividido y exilio',
  approximate_date = 'Desde el reino dividido hasta el regreso del exilio',
  chronological_order = 18,
  temporal_certainty = 'Aproximada',
  geographical_certainty = 'Aproximada',
  appears_on_timeline = 1,
  appears_on_map = 1,
  status = 'Publicado básico'
WHERE id = 'eve-profetas-exilio-esperanza';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-profetas-exilio-esperanza',
  'Profetas: juicio, exilio y esperanza',
  'profetas-juicio-exilio-y-esperanza',
  'Infografía',
  'Recurso visual para conectar el pecado del pueblo, el juicio del exilio, las promesas proféticas y la esperanza mesiánica.',
  'Infografía sobre profetas, exilio, nuevo pacto y esperanza mesiánica.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-profetas-2-reyes-17-6-23', 'lec-profetas-exilio-esperanza', '2 Reyes 17:6-23', 'El exilio del reino del norte muestra la seriedad de la infidelidad.', 1),
('ref-profetas-2-reyes-25-1-21', 'lec-profetas-exilio-esperanza', '2 Reyes 25:1-21', 'Jerusalén cae y el templo es destruido.', 2),
('ref-profetas-isaias-9-1-7', 'lec-profetas-exilio-esperanza', 'Isaías 9:1-7', 'Promesa de un Rey que traerá luz y paz.', 3),
('ref-profetas-isaias-53-1-12', 'lec-profetas-exilio-esperanza', 'Isaías 53:1-12', 'El Siervo sufriente carga con el pecado.', 4),
('ref-profetas-jeremias-31-31-34', 'lec-profetas-exilio-esperanza', 'Jeremías 31:31-34', 'Promesa del nuevo pacto.', 5),
('ref-profetas-ezequiel-36-24-28', 'lec-profetas-exilio-esperanza', 'Ezequiel 36:24-28', 'Promesa de limpieza, corazón nuevo y Espíritu.', 6),
('ref-profetas-daniel-7-13-14', 'lec-profetas-exilio-esperanza', 'Daniel 7:13-14', 'El Hijo del Hombre recibe dominio eterno.', 7),
('ref-profetas-esdras-1-1-4', 'lec-profetas-exilio-esperanza', 'Esdras 1:1-4', 'Dios abre camino para el regreso del exilio.', 8);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-profetas-1', 'lec-profetas-exilio-esperanza', 'Los profetas denunciaron idolatría, injusticia y falsa seguridad religiosa.', 1),
('pt-profetas-2', 'lec-profetas-exilio-esperanza', 'El exilio mostró que Dios toma en serio el pecado y cumple sus advertencias.', 2),
('pt-profetas-3', 'lec-profetas-exilio-esperanza', 'El juicio no canceló la fidelidad de Dios ni su plan redentor.', 3),
('pt-profetas-4', 'lec-profetas-exilio-esperanza', 'Los profetas anunciaron nuevo pacto, corazón nuevo y restauración.', 4),
('pt-profetas-5', 'lec-profetas-exilio-esperanza', 'La esperanza profética prepara la venida de Cristo, el Mesías prometido.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-profetas-1', 'lec-profetas-exilio-esperanza', '¿Por qué el exilio fue un juicio justo de Dios?', 1),
('q-profetas-2', 'lec-profetas-exilio-esperanza', '¿Qué promesas de esperanza anunciaron los profetas?', 2),
('q-profetas-3', 'lec-profetas-exilio-esperanza', '¿Cómo prepara esta etapa la venida de Jesús?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-profetas-exilio-esperanza', 'book-2-reyes'),
('lec-profetas-exilio-esperanza', 'book-isaias'),
('lec-profetas-exilio-esperanza', 'book-jeremias'),
('lec-profetas-exilio-esperanza', 'book-ezequiel'),
('lec-profetas-exilio-esperanza', 'book-daniel'),
('lec-profetas-exilio-esperanza', 'book-esdras');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-profetas-exilio-esperanza', 'pas-2-reyes-17-6-23', 'exilio de Israel', 1),
('lec-profetas-exilio-esperanza', 'pas-2-reyes-25-1-21', 'exilio de Judá', 2),
('lec-profetas-exilio-esperanza', 'pas-isaias-9-1-7', 'esperanza real', 3),
('lec-profetas-exilio-esperanza', 'pas-isaias-53-1-12', 'siervo sufriente', 4),
('lec-profetas-exilio-esperanza', 'pas-jeremias-31-31-34', 'nuevo pacto', 5),
('lec-profetas-exilio-esperanza', 'pas-ezequiel-36-24-28', 'corazón nuevo', 6),
('lec-profetas-exilio-esperanza', 'pas-daniel-7-13-14', 'reino eterno', 7),
('lec-profetas-exilio-esperanza', 'pas-esdras-1-1-4', 'regreso del exilio', 8);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-profetas-exilio-esperanza', 'eve-profetas-exilio-esperanza');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-profetas-exilio-esperanza', 'tem-profetas'),
('lec-profetas-exilio-esperanza', 'tem-exilio'),
('lec-profetas-exilio-esperanza', 'tem-juicio'),
('lec-profetas-exilio-esperanza', 'tem-esperanza'),
('lec-profetas-exilio-esperanza', 'tem-nuevo-pacto'),
('lec-profetas-exilio-esperanza', 'tem-mesias'),
('lec-profetas-exilio-esperanza', 'tem-restauracion');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-profetas-exilio-esperanza', 'per-profetas'),
('lec-profetas-exilio-esperanza', 'per-isaias'),
('lec-profetas-exilio-esperanza', 'per-jeremias'),
('lec-profetas-exilio-esperanza', 'per-ezequiel'),
('lec-profetas-exilio-esperanza', 'per-daniel'),
('lec-profetas-exilio-esperanza', 'per-remanente'),
('lec-profetas-exilio-esperanza', 'per-jesus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-profetas-exilio-esperanza', 'lug-jerusalen'),
('lec-profetas-exilio-esperanza', 'lug-babilonia'),
('lec-profetas-exilio-esperanza', 'lug-asiria'),
('lec-profetas-exilio-esperanza', 'lug-juda'),
('lec-profetas-exilio-esperanza', 'lug-israel-norte');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-profetas-exilio-esperanza', 'glo-profetas'),
('lec-profetas-exilio-esperanza', 'glo-exilio'),
('lec-profetas-exilio-esperanza', 'glo-nuevo-pacto'),
('lec-profetas-exilio-esperanza', 'glo-remanente'),
('lec-profetas-exilio-esperanza', 'glo-siervo-sufriente');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-profetas-exilio-esperanza', 'vis-profetas-exilio-esperanza');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-profetas-exilio-esperanza', 'per-profetas'),
('eve-profetas-exilio-esperanza', 'per-isaias'),
('eve-profetas-exilio-esperanza', 'per-jeremias'),
('eve-profetas-exilio-esperanza', 'per-ezequiel'),
('eve-profetas-exilio-esperanza', 'per-daniel'),
('eve-profetas-exilio-esperanza', 'per-remanente'),
('eve-profetas-exilio-esperanza', 'per-jesus');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-profetas-exilio-esperanza', 'lug-jerusalen'),
('eve-profetas-exilio-esperanza', 'lug-babilonia'),
('eve-profetas-exilio-esperanza', 'lug-asiria'),
('eve-profetas-exilio-esperanza', 'lug-juda'),
('eve-profetas-exilio-esperanza', 'lug-israel-norte');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-profetas-exilio-esperanza', 'tem-profetas'),
('eve-profetas-exilio-esperanza', 'tem-exilio'),
('eve-profetas-exilio-esperanza', 'tem-juicio'),
('eve-profetas-exilio-esperanza', 'tem-esperanza'),
('eve-profetas-exilio-esperanza', 'tem-nuevo-pacto'),
('eve-profetas-exilio-esperanza', 'tem-mesias'),
('eve-profetas-exilio-esperanza', 'tem-restauracion');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-profetas-exilio-esperanza', 'book-2-reyes'),
('eve-profetas-exilio-esperanza', 'book-isaias'),
('eve-profetas-exilio-esperanza', 'book-jeremias'),
('eve-profetas-exilio-esperanza', 'book-ezequiel'),
('eve-profetas-exilio-esperanza', 'book-daniel'),
('eve-profetas-exilio-esperanza', 'book-esdras');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-profetas-exilio-esperanza', 'pas-2-reyes-17-6-23', 'exilio de Israel', 1),
('eve-profetas-exilio-esperanza', 'pas-2-reyes-25-1-21', 'exilio de Judá', 2),
('eve-profetas-exilio-esperanza', 'pas-jeremias-31-31-34', 'nuevo pacto', 3),
('eve-profetas-exilio-esperanza', 'pas-ezequiel-36-24-28', 'corazón nuevo', 4),
('eve-profetas-exilio-esperanza', 'pas-daniel-7-13-14', 'reino eterno', 5),
('eve-profetas-exilio-esperanza', 'pas-esdras-1-1-4', 'regreso del exilio', 6);