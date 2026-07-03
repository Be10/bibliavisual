DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-ley-pacto-sinai';

DELETE FROM event_passages
WHERE event_id = 'eve-pacto-sinai';

DELETE FROM event_books
WHERE event_id = 'eve-pacto-sinai';

DELETE FROM event_topics
WHERE event_id = 'eve-pacto-sinai';

DELETE FROM event_places
WHERE event_id = 'eve-pacto-sinai';

DELETE FROM event_people
WHERE event_id = 'eve-pacto-sinai';

UPDATE lessons
SET
  title = 'La ley y el pacto en Sinaí',
  slug = 'la-ley-y-el-pacto-en-sinai',
  eyebrow = 'Lección 12 de 20 · 7–10 minutos',
  main_idea = 'En Sinaí, Dios hizo pacto con Israel y le dio su ley para mostrar su santidad, formar a su pueblo y enseñarles a vivir como nación redimida.',
  summary = 'Después de liberar a Israel de Egipto, Dios llevó a su pueblo al Sinaí, estableció un pacto y le dio mandamientos que revelan su carácter santo.',
  explanation = 'La ley en Sinaí no fue dada para que Israel ganara su liberación; fue dada después de que Dios ya lo había redimido de Egipto. Esto es importante: la obediencia responde a la gracia de Dios. En el Sinaí, el Señor llama a Israel a ser su especial tesoro, un reino de sacerdotes y gente santa. Los mandamientos muestran el carácter de Dios, exponen el pecado y ordenan la vida del pueblo redimido. Al mismo tiempo, la ley también revela la necesidad de una obediencia más profunda y de una obra redentora mayor. El Nuevo Testamento enseña que la ley apunta a Cristo, quien cumple perfectamente la voluntad de Dios y establece el nuevo pacto.',
  remember = 'La ley fue dada a un pueblo ya redimido para mostrar la santidad de Dios y enseñar una vida de pacto.',
  application = 'Sinaí nos llama a recibir la gracia de Dios con gratitud, tomar en serio su santidad y obedecerle no para comprar salvación, sino como respuesta a su redención.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-ley-pacto-sinai';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-exodo-19', 'book-exodo', 19),
('chap-exodo-20', 'book-exodo', 20),
('chap-exodo-24', 'book-exodo', 24),
('chap-deuteronomio-6', 'book-deuteronomio', 6),
('chap-galatas-3', 'book-galatas', 3),
('chap-hebreos-8', 'book-hebreos', 8);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-exodo-19-1-6',
  'Éxodo 19:1-6',
  'exodo-19-1-6',
  'book-exodo',
  19,
  1,
  19,
  6,
  'Dios llama a Israel a ser su especial tesoro, reino de sacerdotes y gente santa.',
  'Publicado básico'
),
(
  'pas-exodo-20-1-17',
  'Éxodo 20:1-17',
  'exodo-20-1-17',
  'book-exodo',
  20,
  1,
  20,
  17,
  'Los diez mandamientos dados por Dios a Israel.',
  'Publicado básico'
),
(
  'pas-exodo-24-3-8',
  'Éxodo 24:3-8',
  'exodo-24-3-8',
  'book-exodo',
  24,
  3,
  24,
  8,
  'El pacto en Sinaí es confirmado con la respuesta del pueblo y la sangre del pacto.',
  'Publicado básico'
),
(
  'pas-deuteronomio-6-4-9',
  'Deuteronomio 6:4-9',
  'deuteronomio-6-4-9',
  'book-deuteronomio',
  6,
  4,
  6,
  9,
  'Llamado a amar al Señor y guardar sus palabras en el corazón.',
  'Publicado básico'
),
(
  'pas-galatas-3-24',
  'Gálatas 3:24',
  'galatas-3-24',
  'book-galatas',
  3,
  24,
  3,
  24,
  'La ley conduce hacia Cristo.',
  'Publicado básico'
),
(
  'pas-hebreos-8-6-13',
  'Hebreos 8:6-13',
  'hebreos-8-6-13',
  'book-hebreos',
  8,
  6,
  8,
  13,
  'Cristo es mediador de un mejor pacto.',
  'Publicado básico'
);

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
(
  'tem-ley',
  'Ley',
  'ley',
  'Instrucción de Dios que revela su carácter, muestra el pecado y ordena la vida de su pueblo.',
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
  'tem-santidad',
  'Santidad',
  'santidad',
  'Pureza y separación de Dios, y llamado de su pueblo a vivir apartado para Él.',
  'Publicado básico'
),
(
  'tem-obediencia',
  'Obediencia',
  'obediencia',
  'Respuesta fiel a la palabra de Dios como expresión de amor y confianza.',
  'Publicado básico'
),
(
  'tem-gracia',
  'Gracia',
  'gracia',
  'Favor inmerecido de Dios hacia pecadores y necesitados.',
  'Publicado básico'
),
(
  'tem-nuevo-pacto',
  'Nuevo pacto',
  'nuevo-pacto',
  'Promesa de una relación renovada con Dios cumplida por medio de Cristo.',
  'Publicado básico'
);

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
(
  'per-moises',
  'Moisés',
  'moises',
  'Siervo de Dios usado para liberar a Israel y entregar la Ley.',
  'Publicado básico'
),
(
  'per-aaron',
  'Aarón',
  'aaron',
  'Hermano de Moisés y portavoz asociado con la liberación de Israel y el sacerdocio.',
  'Publicado básico'
),
(
  'per-pueblo-israel',
  'El pueblo de Israel',
  'el-pueblo-de-israel',
  'Pueblo descendiente de Abraham, Isaac y Jacob, liberado por Dios de Egipto.',
  'Publicado básico'
),
(
  'per-jesus',
  'Jesús',
  'jesus',
  'El Hijo de Dios, Mesías prometido y centro de la historia bíblica.',
  'Publicado básico'
);

INSERT OR IGNORE INTO places (
  id, name, slug, place_type, summary, latitude, longitude, map_zoom,
  geographical_certainty, status
) VALUES
(
  'lug-monte-sinai',
  'Monte Sinaí',
  'monte-sinai',
  'Monte / región',
  'Lugar asociado con el llamado de Moisés y el pacto de Dios con Israel. Su identificación exacta es debatida.',
  28.5394,
  33.9754,
  8,
  'Debatida',
  'Publicado básico'
),
(
  'lug-desierto-sinai',
  'Desierto de Sinaí',
  'desierto-de-sinai',
  'Desierto / región',
  'Región donde Israel fue guiado por Dios después de salir de Egipto.',
  29.5000,
  33.8000,
  6,
  'Aproximada',
  'Publicado básico'
);

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
(
  'glo-ley',
  'Ley',
  'ley',
  'Instrucción de Dios dada a Israel, especialmente asociada con el pacto en Sinaí.',
  'Publicado básico'
),
(
  'glo-diez-mandamientos',
  'Diez mandamientos',
  'diez-mandamientos',
  'Mandamientos centrales dados por Dios a Israel en el Sinaí.',
  'Publicado básico'
),
(
  'glo-pacto-sinai',
  'Pacto en Sinaí',
  'pacto-en-sinai',
  'Pacto establecido por Dios con Israel después de la liberación de Egipto.',
  'Publicado básico'
),
(
  'glo-santidad',
  'Santidad',
  'santidad',
  'Pureza y separación propias de Dios, y llamado de su pueblo a vivir para Él.',
  'Publicado básico'
);

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-pacto-sinai',
  'Pacto en Sinaí',
  'pacto-en-sinai',
  'Pacto / ley',
  'Dios establece un pacto con Israel en el Sinaí y le entrega su ley.',
  'Después de redimir a Israel de Egipto, Dios lo lleva al Sinaí y lo llama a vivir como su pueblo santo. La ley revela el carácter de Dios, ordena la vida del pueblo y apunta hacia la necesidad de Cristo y del nuevo pacto.',
  'Éxodo y Sinaí',
  'Después del Éxodo y antes del peregrinaje por el desierto',
  12,
  'Aproximada',
  'Debatida',
  1,
  1,
  'Publicado básico'
);

UPDATE events
SET
  title = 'Pacto en Sinaí',
  slug = 'pacto-en-sinai',
  event_type = 'Pacto / ley',
  summary = 'Dios establece un pacto con Israel en el Sinaí y le entrega su ley.',
  description = 'Después de redimir a Israel de Egipto, Dios lo lleva al Sinaí y lo llama a vivir como su pueblo santo. La ley revela el carácter de Dios, ordena la vida del pueblo y apunta hacia la necesidad de Cristo y del nuevo pacto.',
  biblical_period = 'Éxodo y Sinaí',
  approximate_date = 'Después del Éxodo y antes del peregrinaje por el desierto',
  chronological_order = 12,
  temporal_certainty = 'Aproximada',
  geographical_certainty = 'Debatida',
  appears_on_timeline = 1,
  appears_on_map = 1,
  status = 'Publicado básico'
WHERE id = 'eve-pacto-sinai';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-ley-pacto-sinai',
  'Sinaí: gracia, ley y pacto',
  'sinai-gracia-ley-y-pacto',
  'Infografía',
  'Recurso visual para mostrar el orden bíblico: redención de Egipto, pacto en Sinaí, ley y vida santa.',
  'Infografía sobre la ley y el pacto en Sinaí.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-sinai-exodo-19-1-6', 'lec-ley-pacto-sinai', 'Éxodo 19:1-6', 'Dios llama a Israel a ser su pueblo santo.', 1),
('ref-sinai-exodo-20-1-17', 'lec-ley-pacto-sinai', 'Éxodo 20:1-17', 'Los diez mandamientos revelan la voluntad de Dios para su pueblo.', 2),
('ref-sinai-exodo-24-3-8', 'lec-ley-pacto-sinai', 'Éxodo 24:3-8', 'El pacto es confirmado solemnemente.', 3),
('ref-sinai-deuteronomio-6-4-9', 'lec-ley-pacto-sinai', 'Deuteronomio 6:4-9', 'El amor a Dios debe marcar el corazón y la vida diaria.', 4),
('ref-sinai-galatas-3-24', 'lec-ley-pacto-sinai', 'Gálatas 3:24', 'La ley conduce hacia Cristo.', 5),
('ref-sinai-hebreos-8-6-13', 'lec-ley-pacto-sinai', 'Hebreos 8:6-13', 'Cristo es mediador de un mejor pacto.', 6);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-sinai-1', 'lec-ley-pacto-sinai', 'Dios dio la ley después de liberar a Israel, no antes.', 1),
('pt-sinai-2', 'lec-ley-pacto-sinai', 'La obediencia del pueblo debía ser una respuesta a la gracia redentora de Dios.', 2),
('pt-sinai-3', 'lec-ley-pacto-sinai', 'La ley revela la santidad de Dios y la seriedad del pecado.', 3),
('pt-sinai-4', 'lec-ley-pacto-sinai', 'Israel fue llamado a vivir como pueblo santo entre las naciones.', 4),
('pt-sinai-5', 'lec-ley-pacto-sinai', 'La ley apunta hacia Cristo y hacia la necesidad del nuevo pacto.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-sinai-1', 'lec-ley-pacto-sinai', '¿Por qué importa que Dios diera la ley después de redimir a Israel?', 1),
('q-sinai-2', 'lec-ley-pacto-sinai', '¿Qué revela la ley sobre el carácter de Dios?', 2),
('q-sinai-3', 'lec-ley-pacto-sinai', '¿Cómo nos ayuda esta lección a entender la obediencia cristiana?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-ley-pacto-sinai', 'book-exodo'),
('lec-ley-pacto-sinai', 'book-deuteronomio'),
('lec-ley-pacto-sinai', 'book-galatas'),
('lec-ley-pacto-sinai', 'book-hebreos');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-ley-pacto-sinai', 'pas-exodo-19-1-6', 'llamado del pacto', 1),
('lec-ley-pacto-sinai', 'pas-exodo-20-1-17', 'ley', 2),
('lec-ley-pacto-sinai', 'pas-exodo-24-3-8', 'confirmación del pacto', 3),
('lec-ley-pacto-sinai', 'pas-deuteronomio-6-4-9', 'amor y obediencia', 4),
('lec-ley-pacto-sinai', 'pas-galatas-3-24', 'conexión con Cristo', 5),
('lec-ley-pacto-sinai', 'pas-hebreos-8-6-13', 'nuevo pacto', 6);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-ley-pacto-sinai', 'eve-pacto-sinai');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-ley-pacto-sinai', 'tem-ley'),
('lec-ley-pacto-sinai', 'tem-pacto'),
('lec-ley-pacto-sinai', 'tem-santidad'),
('lec-ley-pacto-sinai', 'tem-obediencia'),
('lec-ley-pacto-sinai', 'tem-gracia'),
('lec-ley-pacto-sinai', 'tem-nuevo-pacto');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-ley-pacto-sinai', 'per-moises'),
('lec-ley-pacto-sinai', 'per-aaron'),
('lec-ley-pacto-sinai', 'per-pueblo-israel'),
('lec-ley-pacto-sinai', 'per-jesus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-ley-pacto-sinai', 'lug-monte-sinai'),
('lec-ley-pacto-sinai', 'lug-desierto-sinai');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-ley-pacto-sinai', 'glo-ley'),
('lec-ley-pacto-sinai', 'glo-diez-mandamientos'),
('lec-ley-pacto-sinai', 'glo-pacto-sinai'),
('lec-ley-pacto-sinai', 'glo-santidad');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-ley-pacto-sinai', 'vis-ley-pacto-sinai');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-pacto-sinai', 'per-moises'),
('eve-pacto-sinai', 'per-aaron'),
('eve-pacto-sinai', 'per-pueblo-israel');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-pacto-sinai', 'lug-monte-sinai'),
('eve-pacto-sinai', 'lug-desierto-sinai');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-pacto-sinai', 'tem-ley'),
('eve-pacto-sinai', 'tem-pacto'),
('eve-pacto-sinai', 'tem-santidad'),
('eve-pacto-sinai', 'tem-obediencia'),
('eve-pacto-sinai', 'tem-gracia'),
('eve-pacto-sinai', 'tem-nuevo-pacto');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-pacto-sinai', 'book-exodo'),
('eve-pacto-sinai', 'book-deuteronomio'),
('eve-pacto-sinai', 'book-galatas'),
('eve-pacto-sinai', 'book-hebreos');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-pacto-sinai', 'pas-exodo-19-1-6', 'llamado del pacto', 1),
('eve-pacto-sinai', 'pas-exodo-20-1-17', 'ley', 2),
('eve-pacto-sinai', 'pas-exodo-24-3-8', 'confirmación del pacto', 3),
('eve-pacto-sinai', 'pas-hebreos-8-6-13', 'nuevo pacto', 4);