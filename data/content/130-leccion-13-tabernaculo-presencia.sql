DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-tabernaculo-presencia';

DELETE FROM event_passages
WHERE event_id = 'eve-tabernaculo-presencia';

DELETE FROM event_books
WHERE event_id = 'eve-tabernaculo-presencia';

DELETE FROM event_topics
WHERE event_id = 'eve-tabernaculo-presencia';

DELETE FROM event_places
WHERE event_id = 'eve-tabernaculo-presencia';

DELETE FROM event_people
WHERE event_id = 'eve-tabernaculo-presencia';

UPDATE lessons
SET
  title = 'El tabernáculo y la presencia de Dios',
  slug = 'el-tabernaculo-y-la-presencia-de-dios',
  eyebrow = 'Lección 13 de 20 · 7–10 minutos',
  main_idea = 'Dios mandó construir el tabernáculo para habitar en medio de su pueblo y enseñar que su presencia es santa, cercana y accesible solo por el camino que Él provee.',
  summary = 'El tabernáculo muestra el deseo de Dios de morar con su pueblo, pero también enseña la santidad, el sacrificio y la mediación necesarios para acercarse a Él.',
  explanation = 'Después del pacto en Sinaí, Dios dio instrucciones para construir el tabernáculo. No era solo una tienda religiosa: era una señal visible de que el Dios santo quería habitar en medio de su pueblo redimido. Cada parte del tabernáculo enseñaba algo sobre la presencia de Dios, la santidad, el pecado, el sacrificio y la necesidad de mediación. El pueblo no podía acercarse a Dios de cualquier manera; Dios mismo proveía el camino. Cuando la gloria del Señor llenó el tabernáculo, quedó claro que la presencia de Dios acompañaba a Israel en el desierto. El Nuevo Testamento muestra que el tabernáculo apunta hacia Cristo, quien habitó entre nosotros, abrió el camino definitivo a Dios y hace posible que su pueblo sea morada de Dios por el Espíritu.',
  remember = 'El tabernáculo enseña que Dios quiere habitar con su pueblo, pero el acceso a su presencia depende del camino que Él mismo provee.',
  application = 'Esta lección nos invita a valorar la presencia de Dios, acercarnos a Él con reverencia y gratitud, y ver en Cristo el cumplimiento del acceso verdadero a Dios.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-tabernaculo-presencia';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-exodo-25', 'book-exodo', 25),
('chap-exodo-40', 'book-exodo', 40),
('chap-levitico-16', 'book-levitico', 16),
('chap-juan-1', 'book-juan', 1),
('chap-hebreos-9', 'book-hebreos', 9),
('chap-apocalipsis-21', 'book-apocalipsis', 21);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-exodo-25-8-9',
  'Éxodo 25:8-9',
  'exodo-25-8-9',
  'book-exodo',
  25,
  8,
  25,
  9,
  'Dios manda hacer un santuario para habitar en medio de su pueblo.',
  'Publicado básico'
),
(
  'pas-exodo-40-34-38',
  'Éxodo 40:34-38',
  'exodo-40-34-38',
  'book-exodo',
  40,
  34,
  40,
  38,
  'La gloria del Señor llena el tabernáculo y guía a Israel.',
  'Publicado básico'
),
(
  'pas-levitico-16',
  'Levítico 16',
  'levitico-16',
  'book-levitico',
  16,
  NULL,
  16,
  NULL,
  'Día de la expiación: sacrificio, sacerdocio y acceso regulado a la presencia de Dios.',
  'Publicado básico'
),
(
  'pas-juan-1-14',
  'Juan 1:14',
  'juan-1-14',
  'book-juan',
  1,
  14,
  1,
  14,
  'El Verbo fue hecho carne y habitó entre nosotros.',
  'Publicado básico'
),
(
  'pas-hebreos-9-11-14',
  'Hebreos 9:11-14',
  'hebreos-9-11-14',
  'book-hebreos',
  9,
  11,
  9,
  14,
  'Cristo entra como sumo sacerdote con una redención eterna.',
  'Publicado básico'
),
(
  'pas-apocalipsis-21-3',
  'Apocalipsis 21:3',
  'apocalipsis-21-3',
  'book-apocalipsis',
  21,
  3,
  21,
  3,
  'La morada de Dios estará con los hombres en la nueva creación.',
  'Publicado básico'
);

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
(
  'tem-presencia-de-dios',
  'Presencia de Dios',
  'presencia-de-dios',
  'Realidad de Dios habitando, guiando y relacionándose con su pueblo.',
  'Publicado básico'
),
(
  'tem-tabernaculo',
  'Tabernáculo',
  'tabernaculo',
  'Santuario móvil dado por Dios a Israel como señal de su presencia en medio del pueblo.',
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
  'tem-sacrificio',
  'Sacrificio',
  'sacrificio',
  'Ofrenda presentada a Dios que enseña la gravedad del pecado y la necesidad de expiación.',
  'Publicado básico'
),
(
  'tem-sacerdocio',
  'Sacerdocio',
  'sacerdocio',
  'Servicio de mediación establecido para acercarse a Dios según sus instrucciones.',
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
  'Hermano de Moisés y primer sumo sacerdote de Israel.',
  'Publicado básico'
),
(
  'per-sacerdotes-israel',
  'Los sacerdotes de Israel',
  'los-sacerdotes-de-israel',
  'Servidores apartados para ministrar en el tabernáculo y enseñar el acceso regulado a la presencia de Dios.',
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
),
(
  'lug-tabernaculo',
  'Tabernáculo',
  'tabernaculo',
  'Santuario móvil',
  'Santuario móvil construido por Israel según las instrucciones de Dios para representar su presencia en medio del pueblo.',
  NULL,
  NULL,
  NULL,
  'Móvil / no aplica',
  'Publicado básico'
);

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
(
  'glo-tabernaculo',
  'Tabernáculo',
  'tabernaculo',
  'Santuario móvil donde Dios manifestó su presencia en medio de Israel.',
  'Publicado básico'
),
(
  'glo-presencia-de-dios',
  'Presencia de Dios',
  'presencia-de-dios',
  'Dios habitando, guiando y relacionándose con su pueblo.',
  'Publicado básico'
),
(
  'glo-expiacion',
  'Expiación',
  'expiacion',
  'Obra por la cual el pecado es cubierto o tratado según la provisión de Dios.',
  'Publicado básico'
),
(
  'glo-sumo-sacerdote',
  'Sumo sacerdote',
  'sumo-sacerdote',
  'Sacerdote principal que representaba al pueblo delante de Dios, figura que apunta al sacerdocio perfecto de Cristo.',
  'Publicado básico'
);

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-tabernaculo-presencia',
  'El tabernáculo y la presencia de Dios',
  'el-tabernaculo-y-la-presencia-de-dios',
  'Presencia / adoración',
  'Dios ordena construir el tabernáculo y manifiesta su gloria en medio de Israel.',
  'El tabernáculo muestra que el Dios santo desea habitar con su pueblo redimido. Sus sacrificios, sacerdocio y espacios enseñan la necesidad de mediación y apuntan hacia Cristo, quien abre el acceso definitivo a Dios.',
  'Éxodo y Sinaí',
  'Después del pacto en Sinaí y durante el peregrinaje por el desierto',
  13,
  'Aproximada',
  'Móvil / no aplica',
  1,
  0,
  'Publicado básico'
);

UPDATE events
SET
  title = 'El tabernáculo y la presencia de Dios',
  slug = 'el-tabernaculo-y-la-presencia-de-dios',
  event_type = 'Presencia / adoración',
  summary = 'Dios ordena construir el tabernáculo y manifiesta su gloria en medio de Israel.',
  description = 'El tabernáculo muestra que el Dios santo desea habitar con su pueblo redimido. Sus sacrificios, sacerdocio y espacios enseñan la necesidad de mediación y apuntan hacia Cristo, quien abre el acceso definitivo a Dios.',
  biblical_period = 'Éxodo y Sinaí',
  approximate_date = 'Después del pacto en Sinaí y durante el peregrinaje por el desierto',
  chronological_order = 13,
  temporal_certainty = 'Aproximada',
  geographical_certainty = 'Móvil / no aplica',
  appears_on_timeline = 1,
  appears_on_map = 0,
  status = 'Publicado básico'
WHERE id = 'eve-tabernaculo-presencia';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-tabernaculo-presencia',
  'El tabernáculo: Dios habita con su pueblo',
  'el-tabernaculo-dios-habita-con-su-pueblo',
  'Infografía',
  'Recurso visual para explicar el tabernáculo, la presencia de Dios, el sacrificio, el sacerdocio y el cumplimiento en Cristo.',
  'Infografía sobre el tabernáculo y la presencia de Dios en medio de Israel.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-tabernaculo-exodo-25-8-9', 'lec-tabernaculo-presencia', 'Éxodo 25:8-9', 'Dios manda construir un santuario para habitar en medio del pueblo.', 1),
('ref-tabernaculo-exodo-40-34-38', 'lec-tabernaculo-presencia', 'Éxodo 40:34-38', 'La gloria del Señor llena el tabernáculo.', 2),
('ref-tabernaculo-levitico-16', 'lec-tabernaculo-presencia', 'Levítico 16', 'El día de la expiación muestra sacrificio, mediación y acceso regulado.', 3),
('ref-tabernaculo-juan-1-14', 'lec-tabernaculo-presencia', 'Juan 1:14', 'Cristo habitó entre nosotros.', 4),
('ref-tabernaculo-hebreos-9-11-14', 'lec-tabernaculo-presencia', 'Hebreos 9:11-14', 'Cristo es sumo sacerdote y obtiene redención eterna.', 5),
('ref-tabernaculo-apocalipsis-21-3', 'lec-tabernaculo-presencia', 'Apocalipsis 21:3', 'La historia culmina con Dios morando con su pueblo.', 6);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-tabernaculo-1', 'lec-tabernaculo-presencia', 'El tabernáculo mostraba que Dios quería habitar en medio de su pueblo redimido.', 1),
('pt-tabernaculo-2', 'lec-tabernaculo-presencia', 'La presencia de Dios es cercana, pero también santa.', 2),
('pt-tabernaculo-3', 'lec-tabernaculo-presencia', 'Los sacrificios y el sacerdocio enseñaban la necesidad de mediación y expiación.', 3),
('pt-tabernaculo-4', 'lec-tabernaculo-presencia', 'La gloria del Señor llenando el tabernáculo mostraba que Dios guiaba a Israel.', 4),
('pt-tabernaculo-5', 'lec-tabernaculo-presencia', 'El tabernáculo apunta a Cristo, quien abre el acceso definitivo a Dios.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-tabernaculo-1', 'lec-tabernaculo-presencia', '¿Qué enseña el tabernáculo sobre el deseo de Dios de habitar con su pueblo?', 1),
('q-tabernaculo-2', 'lec-tabernaculo-presencia', '¿Por qué el acceso a la presencia de Dios necesitaba sacrificio y mediación?', 2),
('q-tabernaculo-3', 'lec-tabernaculo-presencia', '¿Cómo apunta el tabernáculo hacia Cristo?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-tabernaculo-presencia', 'book-exodo'),
('lec-tabernaculo-presencia', 'book-levitico'),
('lec-tabernaculo-presencia', 'book-juan'),
('lec-tabernaculo-presencia', 'book-hebreos'),
('lec-tabernaculo-presencia', 'book-apocalipsis');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-tabernaculo-presencia', 'pas-exodo-25-8-9', 'mandato', 1),
('lec-tabernaculo-presencia', 'pas-exodo-40-34-38', 'gloria y guía', 2),
('lec-tabernaculo-presencia', 'pas-levitico-16', 'expiación', 3),
('lec-tabernaculo-presencia', 'pas-juan-1-14', 'cumplimiento en Cristo', 4),
('lec-tabernaculo-presencia', 'pas-hebreos-9-11-14', 'sacerdocio de Cristo', 5),
('lec-tabernaculo-presencia', 'pas-apocalipsis-21-3', 'esperanza final', 6);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-tabernaculo-presencia', 'eve-tabernaculo-presencia');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-tabernaculo-presencia', 'tem-presencia-de-dios'),
('lec-tabernaculo-presencia', 'tem-tabernaculo'),
('lec-tabernaculo-presencia', 'tem-santidad'),
('lec-tabernaculo-presencia', 'tem-sacrificio'),
('lec-tabernaculo-presencia', 'tem-sacerdocio'),
('lec-tabernaculo-presencia', 'tem-redencion');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-tabernaculo-presencia', 'per-moises'),
('lec-tabernaculo-presencia', 'per-aaron'),
('lec-tabernaculo-presencia', 'per-sacerdotes-israel'),
('lec-tabernaculo-presencia', 'per-pueblo-israel'),
('lec-tabernaculo-presencia', 'per-jesus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-tabernaculo-presencia', 'lug-monte-sinai'),
('lec-tabernaculo-presencia', 'lug-desierto-sinai'),
('lec-tabernaculo-presencia', 'lug-tabernaculo');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-tabernaculo-presencia', 'glo-tabernaculo'),
('lec-tabernaculo-presencia', 'glo-presencia-de-dios'),
('lec-tabernaculo-presencia', 'glo-expiacion'),
('lec-tabernaculo-presencia', 'glo-sumo-sacerdote');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-tabernaculo-presencia', 'vis-tabernaculo-presencia');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-tabernaculo-presencia', 'per-moises'),
('eve-tabernaculo-presencia', 'per-aaron'),
('eve-tabernaculo-presencia', 'per-sacerdotes-israel'),
('eve-tabernaculo-presencia', 'per-pueblo-israel');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-tabernaculo-presencia', 'lug-monte-sinai'),
('eve-tabernaculo-presencia', 'lug-desierto-sinai'),
('eve-tabernaculo-presencia', 'lug-tabernaculo');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-tabernaculo-presencia', 'tem-presencia-de-dios'),
('eve-tabernaculo-presencia', 'tem-tabernaculo'),
('eve-tabernaculo-presencia', 'tem-santidad'),
('eve-tabernaculo-presencia', 'tem-sacrificio'),
('eve-tabernaculo-presencia', 'tem-sacerdocio'),
('eve-tabernaculo-presencia', 'tem-redencion');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-tabernaculo-presencia', 'book-exodo'),
('eve-tabernaculo-presencia', 'book-levitico'),
('eve-tabernaculo-presencia', 'book-juan'),
('eve-tabernaculo-presencia', 'book-hebreos'),
('eve-tabernaculo-presencia', 'book-apocalipsis');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-tabernaculo-presencia', 'pas-exodo-25-8-9', 'mandato', 1),
('eve-tabernaculo-presencia', 'pas-exodo-40-34-38', 'gloria y guía', 2),
('eve-tabernaculo-presencia', 'pas-levitico-16', 'expiación', 3),
('eve-tabernaculo-presencia', 'pas-hebreos-9-11-14', 'sacerdocio de Cristo', 4),
('eve-tabernaculo-presencia', 'pas-apocalipsis-21-3', 'esperanza final', 5);