DELETE FROM lesson_visual_resources WHERE lesson_id = 'lec-templo-y-adoracion';
DELETE FROM lesson_glossary WHERE lesson_id = 'lec-templo-y-adoracion';
DELETE FROM lesson_places WHERE lesson_id = 'lec-templo-y-adoracion';
DELETE FROM lesson_people WHERE lesson_id = 'lec-templo-y-adoracion';
DELETE FROM lesson_topics WHERE lesson_id = 'lec-templo-y-adoracion';
DELETE FROM lesson_events WHERE lesson_id = 'lec-templo-y-adoracion';
DELETE FROM lesson_passages WHERE lesson_id = 'lec-templo-y-adoracion';
DELETE FROM lesson_books WHERE lesson_id = 'lec-templo-y-adoracion';
DELETE FROM lesson_questions WHERE lesson_id = 'lec-templo-y-adoracion';
DELETE FROM lesson_points WHERE lesson_id = 'lec-templo-y-adoracion';
DELETE FROM lesson_bible_refs WHERE lesson_id = 'lec-templo-y-adoracion';

DELETE FROM event_passages WHERE event_id = 'eve-templo-adoracion';
DELETE FROM event_books WHERE event_id = 'eve-templo-adoracion';
DELETE FROM event_topics WHERE event_id = 'eve-templo-adoracion';
DELETE FROM event_places WHERE event_id = 'eve-templo-adoracion';
DELETE FROM event_people WHERE event_id = 'eve-templo-adoracion';

UPDATE lessons
SET
  title = 'El templo y la adoración',
  slug = 'el-templo-y-la-adoracion',
  eyebrow = 'Lección 17 de 20 · 7–10 minutos',
  main_idea = 'El templo mostró que Dios quería habitar en medio de su pueblo, pero también enseñó que el acceso a su presencia requiere santidad, sacrificio y mediación.',
  summary = 'El templo de Jerusalén continuó el tema del tabernáculo: la presencia santa de Dios en medio de Israel y la adoración ordenada según su palabra.',
  explanation = 'Después del tabernáculo y del establecimiento del reino, Salomón construyó el templo en Jerusalén. El templo se convirtió en el centro visible de la adoración de Israel, el lugar asociado con sacrificios, oración, sacerdocio y presencia de Dios. Cuando la gloria del Señor llenó el templo, quedó claro que Dios estaba en medio de su pueblo. Sin embargo, el templo no podía ser tratado como amuleto religioso. La adoración verdadera requería un corazón fiel al Señor. Con el tiempo, el pecado de Israel profanó la adoración y preparó el camino hacia el juicio y el exilio. El Nuevo Testamento muestra que Jesús es mayor que el templo: en Él, Dios habita plenamente con nosotros, y por su obra tenemos acceso verdadero a la presencia de Dios.',
  remember = 'El templo enseña que Dios habita con su pueblo, pero el acceso a su presencia depende del camino que Él provee.',
  application = 'Esta lección nos llama a adorar a Dios con reverencia, no como una rutina vacía, sino con fe, gratitud y confianza en Cristo, quien abre el camino a Dios.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-templo-y-adoracion';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-1-reyes-6', 'book-1-reyes', 6),
('chap-1-reyes-8', 'book-1-reyes', 8),
('chap-2-cronicas-7', 'book-2-cronicas', 7),
('chap-salmos-84', 'book-salmos', 84),
('chap-juan-2', 'book-juan', 2),
('chap-hebreos-10', 'book-hebreos', 10);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
('pas-1-reyes-6-1-14', '1 Reyes 6:1-14', '1-reyes-6-1-14', 'book-1-reyes', 6, 1, 6, 14, 'Salomón comienza la construcción del templo en Jerusalén.', 'Publicado básico'),
('pas-1-reyes-8-10-13', '1 Reyes 8:10-13', '1-reyes-8-10-13', 'book-1-reyes', 8, 10, 8, 13, 'La gloria del Señor llena el templo.', 'Publicado básico'),
('pas-1-reyes-8-22-30', '1 Reyes 8:22-30', '1-reyes-8-22-30', 'book-1-reyes', 8, 22, 8, 30, 'Oración de Salomón reconociendo que Dios oye desde los cielos.', 'Publicado básico'),
('pas-2-cronicas-7-1-3', '2 Crónicas 7:1-3', '2-cronicas-7-1-3', 'book-2-cronicas', 7, 1, 7, 3, 'La gloria del Señor llena el templo y el pueblo adora.', 'Publicado básico'),
('pas-salmos-84-1-12', 'Salmo 84:1-12', 'salmo-84-1-12', 'book-salmos', 84, 1, 84, 12, 'Canto de deseo por la presencia de Dios y sus atrios.', 'Publicado básico'),
('pas-juan-2-19-21', 'Juan 2:19-21', 'juan-2-19-21', 'book-juan', 2, 19, 2, 21, 'Jesús habla del templo refiriéndose a su cuerpo.', 'Publicado básico'),
('pas-hebreos-10-19-22', 'Hebreos 10:19-22', 'hebreos-10-19-22', 'book-hebreos', 10, 19, 10, 22, 'Por la obra de Cristo tenemos libertad para entrar en la presencia de Dios.', 'Publicado básico');

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
('tem-templo', 'Templo', 'templo', 'Lugar central de adoración en Jerusalén, asociado con la presencia de Dios, sacrificios y oración.', 'Publicado básico'),
('tem-adoracion', 'Adoración', 'adoracion', 'Respuesta de reverencia, amor y obediencia a Dios conforme a su palabra.', 'Publicado básico'),
('tem-presencia-de-dios', 'Presencia de Dios', 'presencia-de-dios', 'Realidad de Dios habitando, guiando y relacionándose con su pueblo.', 'Publicado básico'),
('tem-sacrificio', 'Sacrificio', 'sacrificio', 'Ofrenda presentada a Dios que enseña la gravedad del pecado y la necesidad de expiación.', 'Publicado básico'),
('tem-santidad', 'Santidad', 'santidad', 'Pureza y separación de Dios, y llamado de su pueblo a vivir apartado para Él.', 'Publicado básico'),
('tem-redencion', 'Redención', 'redencion', 'Dios rescata y libera a su pueblo del pecado, la esclavitud y la muerte.', 'Publicado básico');

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
('per-salomon', 'Salomón', 'salomon', 'Hijo de David y rey de Israel que construyó el templo en Jerusalén.', 'Publicado básico'),
('per-david', 'David', 'david', 'Rey de Israel asociado con la promesa de un reino y una descendencia mesiánica.', 'Publicado básico'),
('per-sacerdotes-israel', 'Los sacerdotes de Israel', 'los-sacerdotes-de-israel', 'Servidores apartados para ministrar en el tabernáculo y el templo.', 'Publicado básico'),
('per-pueblo-israel', 'El pueblo de Israel', 'el-pueblo-de-israel', 'Pueblo descendiente de Abraham, Isaac y Jacob, liberado por Dios de Egipto.', 'Publicado básico'),
('per-jesus', 'Jesús', 'jesus', 'El Hijo de Dios, Mesías prometido y centro de la historia bíblica.', 'Publicado básico');

INSERT OR IGNORE INTO places (
  id, name, slug, place_type, summary, latitude, longitude, map_zoom,
  geographical_certainty, status
) VALUES
('lug-jerusalen', 'Jerusalén', 'jerusalen', 'Ciudad', 'Ciudad central en la historia bíblica, relacionada con el templo, Jesús y la iglesia primitiva.', 31.7780, 35.2354, 10, 'Alta', 'Publicado básico'),
('lug-templo-salomon', 'Templo de Salomón', 'templo-de-salomon', 'Templo', 'Templo construido por Salomón en Jerusalén como centro de adoración de Israel.', 31.7780, 35.2354, 11, 'Alta / aproximada', 'Publicado básico'),
('lug-israel', 'Israel', 'israel', 'Región / reino', 'Territorio y pueblo vinculado con el reino de David y Salomón.', 31.5000, 35.0000, 7, 'Aproximada', 'Publicado básico');

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
('glo-templo', 'Templo', 'templo', 'Lugar de adoración en Jerusalén asociado con la presencia de Dios y los sacrificios.', 'Publicado básico'),
('glo-adoracion', 'Adoración', 'adoracion', 'Respuesta reverente del pueblo de Dios ante quién es Él y lo que ha hecho.', 'Publicado básico'),
('glo-sacrificio', 'Sacrificio', 'sacrificio', 'Ofrenda que enseña la gravedad del pecado y la necesidad de expiación.', 'Publicado básico'),
('glo-presencia-de-dios', 'Presencia de Dios', 'presencia-de-dios', 'Dios habitando, guiando y relacionándose con su pueblo.', 'Publicado básico');

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-templo-adoracion',
  'El templo y la adoración',
  'el-templo-y-la-adoracion',
  'Adoración / presencia',
  'Salomón construye el templo en Jerusalén y la gloria del Señor llena la casa.',
  'El templo continúa el tema del tabernáculo y muestra que Dios desea habitar con su pueblo. También enseña que la adoración verdadera requiere santidad, sacrificio y un corazón fiel. En Cristo, el acceso a Dios llega a su cumplimiento.',
  'Monarquía unida',
  'Reinado de Salomón',
  17,
  'Aproximada',
  'Alta / aproximada',
  1,
  1,
  'Publicado básico'
);

UPDATE events
SET
  title = 'El templo y la adoración',
  slug = 'el-templo-y-la-adoracion',
  event_type = 'Adoración / presencia',
  summary = 'Salomón construye el templo en Jerusalén y la gloria del Señor llena la casa.',
  description = 'El templo continúa el tema del tabernáculo y muestra que Dios desea habitar con su pueblo. También enseña que la adoración verdadera requiere santidad, sacrificio y un corazón fiel. En Cristo, el acceso a Dios llega a su cumplimiento.',
  biblical_period = 'Monarquía unida',
  approximate_date = 'Reinado de Salomón',
  chronological_order = 17,
  temporal_certainty = 'Aproximada',
  geographical_certainty = 'Alta / aproximada',
  appears_on_timeline = 1,
  appears_on_map = 1,
  status = 'Publicado básico'
WHERE id = 'eve-templo-adoracion';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-templo-adoracion',
  'El templo: presencia, sacrificio y adoración',
  'el-templo-presencia-sacrificio-y-adoracion',
  'Infografía',
  'Recurso visual para conectar el templo, la presencia de Dios, los sacrificios, la oración y el cumplimiento en Cristo.',
  'Infografía sobre el templo de Jerusalén y la adoración bíblica.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-templo-1-reyes-6-1-14', 'lec-templo-y-adoracion', '1 Reyes 6:1-14', 'Salomón edifica el templo en Jerusalén.', 1),
('ref-templo-1-reyes-8-10-13', 'lec-templo-y-adoracion', '1 Reyes 8:10-13', 'La gloria del Señor llena el templo.', 2),
('ref-templo-1-reyes-8-22-30', 'lec-templo-y-adoracion', '1 Reyes 8:22-30', 'Salomón ora reconociendo la grandeza de Dios.', 3),
('ref-templo-salmo-84-1-12', 'lec-templo-y-adoracion', 'Salmo 84:1-12', 'El salmo expresa deseo por la presencia de Dios.', 4),
('ref-templo-juan-2-19-21', 'lec-templo-y-adoracion', 'Juan 2:19-21', 'Jesús apunta al cumplimiento del templo en su persona.', 5),
('ref-templo-hebreos-10-19-22', 'lec-templo-y-adoracion', 'Hebreos 10:19-22', 'Cristo abre el acceso verdadero a Dios.', 6);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-templo-1', 'lec-templo-y-adoracion', 'El templo continuó el tema del tabernáculo: Dios habitando en medio de su pueblo.', 1),
('pt-templo-2', 'lec-templo-y-adoracion', 'La gloria del Señor llenando el templo mostraba la presencia santa de Dios.', 2),
('pt-templo-3', 'lec-templo-y-adoracion', 'Los sacrificios y el sacerdocio enseñaban que el pecado necesita expiación y mediación.', 3),
('pt-templo-4', 'lec-templo-y-adoracion', 'La adoración verdadera no puede reducirse a un edificio o rito externo.', 4),
('pt-templo-5', 'lec-templo-y-adoracion', 'Jesús es mayor que el templo y abre el camino definitivo a la presencia de Dios.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-templo-1', 'lec-templo-y-adoracion', '¿Qué relación hay entre el tabernáculo y el templo?', 1),
('q-templo-2', 'lec-templo-y-adoracion', '¿Por qué la presencia de Dios requiere reverencia y santidad?', 2),
('q-templo-3', 'lec-templo-y-adoracion', '¿Cómo cumple Jesús el significado del templo?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-templo-y-adoracion', 'book-1-reyes'),
('lec-templo-y-adoracion', 'book-2-cronicas'),
('lec-templo-y-adoracion', 'book-salmos'),
('lec-templo-y-adoracion', 'book-juan'),
('lec-templo-y-adoracion', 'book-hebreos');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-templo-y-adoracion', 'pas-1-reyes-6-1-14', 'construcción', 1),
('lec-templo-y-adoracion', 'pas-1-reyes-8-10-13', 'gloria de Dios', 2),
('lec-templo-y-adoracion', 'pas-1-reyes-8-22-30', 'oración', 3),
('lec-templo-y-adoracion', 'pas-salmos-84-1-12', 'adoración', 4),
('lec-templo-y-adoracion', 'pas-juan-2-19-21', 'cumplimiento en Cristo', 5),
('lec-templo-y-adoracion', 'pas-hebreos-10-19-22', 'acceso a Dios', 6);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-templo-y-adoracion', 'eve-templo-adoracion');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-templo-y-adoracion', 'tem-templo'),
('lec-templo-y-adoracion', 'tem-adoracion'),
('lec-templo-y-adoracion', 'tem-presencia-de-dios'),
('lec-templo-y-adoracion', 'tem-sacrificio'),
('lec-templo-y-adoracion', 'tem-santidad'),
('lec-templo-y-adoracion', 'tem-redencion');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-templo-y-adoracion', 'per-salomon'),
('lec-templo-y-adoracion', 'per-david'),
('lec-templo-y-adoracion', 'per-sacerdotes-israel'),
('lec-templo-y-adoracion', 'per-pueblo-israel'),
('lec-templo-y-adoracion', 'per-jesus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-templo-y-adoracion', 'lug-jerusalen'),
('lec-templo-y-adoracion', 'lug-templo-salomon'),
('lec-templo-y-adoracion', 'lug-israel');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-templo-y-adoracion', 'glo-templo'),
('lec-templo-y-adoracion', 'glo-adoracion'),
('lec-templo-y-adoracion', 'glo-sacrificio'),
('lec-templo-y-adoracion', 'glo-presencia-de-dios');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-templo-y-adoracion', 'vis-templo-adoracion');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-templo-adoracion', 'per-salomon'),
('eve-templo-adoracion', 'per-david'),
('eve-templo-adoracion', 'per-sacerdotes-israel'),
('eve-templo-adoracion', 'per-pueblo-israel'),
('eve-templo-adoracion', 'per-jesus');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-templo-adoracion', 'lug-jerusalen'),
('eve-templo-adoracion', 'lug-templo-salomon'),
('eve-templo-adoracion', 'lug-israel');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-templo-adoracion', 'tem-templo'),
('eve-templo-adoracion', 'tem-adoracion'),
('eve-templo-adoracion', 'tem-presencia-de-dios'),
('eve-templo-adoracion', 'tem-sacrificio'),
('eve-templo-adoracion', 'tem-santidad'),
('eve-templo-adoracion', 'tem-redencion');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-templo-adoracion', 'book-1-reyes'),
('eve-templo-adoracion', 'book-2-cronicas'),
('eve-templo-adoracion', 'book-salmos'),
('eve-templo-adoracion', 'book-juan'),
('eve-templo-adoracion', 'book-hebreos');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-templo-adoracion', 'pas-1-reyes-6-1-14', 'construcción', 1),
('eve-templo-adoracion', 'pas-1-reyes-8-10-13', 'gloria de Dios', 2),
('eve-templo-adoracion', 'pas-salmos-84-1-12', 'adoración', 3),
('eve-templo-adoracion', 'pas-juan-2-19-21', 'cumplimiento en Cristo', 4),
('eve-templo-adoracion', 'pas-hebreos-10-19-22', 'acceso a Dios', 5);