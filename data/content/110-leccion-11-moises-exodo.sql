DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-moises-y-exodo';

DELETE FROM event_passages
WHERE event_id = 'eve-exodo-liberacion';

DELETE FROM event_books
WHERE event_id = 'eve-exodo-liberacion';

DELETE FROM event_topics
WHERE event_id = 'eve-exodo-liberacion';

DELETE FROM event_places
WHERE event_id = 'eve-exodo-liberacion';

DELETE FROM event_people
WHERE event_id = 'eve-exodo-liberacion';

UPDATE lessons
SET
  title = 'Moisés y el Éxodo',
  slug = 'moises-y-el-exodo',
  eyebrow = 'Lección 11 de 20 · 7–10 minutos',
  main_idea = 'Dios levantó a Moisés para liberar a Israel de Egipto, mostrar su poder sobre los opresores y recordar que la redención viene de Él.',
  summary = 'Éxodo muestra cómo Dios oyó el clamor de su pueblo, llamó a Moisés y liberó a Israel por medio de juicio, pascua y paso por el mar.',
  explanation = 'Después de José, la familia de Israel creció en Egipto, pero con el tiempo fue oprimida por un faraón que no conocía a José. Dios oyó el clamor de su pueblo y llamó a Moisés para sacarlos de esclavitud. El Éxodo revela que Dios es fiel a su pacto, poderoso sobre los reinos humanos y misericordioso con su pueblo. La Pascua muestra que la liberación ocurre bajo la provisión de Dios, y el paso por el mar confirma que el Señor salva cuando no parece haber salida. Esta historia se convierte en una imagen central de redención en toda la Biblia y apunta hacia Cristo, nuestra Pascua, quien libera del pecado y de la muerte.',
  remember = 'Dios oye, recuerda su pacto y redime a su pueblo con poder y misericordia.',
  application = 'La historia del Éxodo nos llama a confiar en Dios cuando la opresión parece fuerte, a recordar que Él escucha el clamor de su pueblo y a ver en Cristo la liberación más profunda.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-moises-y-exodo';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-exodo-1', 'book-exodo', 1),
('chap-exodo-2', 'book-exodo', 2),
('chap-exodo-3', 'book-exodo', 3),
('chap-exodo-12', 'book-exodo', 12),
('chap-exodo-14', 'book-exodo', 14),
('chap-1-corintios-5', 'book-1-corintios', 5),
('chap-hebreos-11', 'book-hebreos', 11);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-exodo-1-8-14',
  'Éxodo 1:8-14',
  'exodo-1-8-14',
  'book-exodo',
  1,
  8,
  1,
  14,
  'Israel es oprimido en Egipto bajo un faraón que teme su crecimiento.',
  'Publicado básico'
),
(
  'pas-exodo-2-1-10',
  'Éxodo 2:1-10',
  'exodo-2-1-10',
  'book-exodo',
  2,
  1,
  2,
  10,
  'Nacimiento y preservación de Moisés.',
  'Publicado básico'
),
(
  'pas-exodo-3-1-12',
  'Éxodo 3:1-12',
  'exodo-3-1-12',
  'book-exodo',
  3,
  1,
  3,
  12,
  'Dios llama a Moisés desde la zarza ardiente para liberar a Israel.',
  'Publicado básico'
),
(
  'pas-exodo-12-1-14',
  'Éxodo 12:1-14',
  'exodo-12-1-14',
  'book-exodo',
  12,
  1,
  12,
  14,
  'Institución de la Pascua antes de la salida de Egipto.',
  'Publicado básico'
),
(
  'pas-exodo-14-13-31',
  'Éxodo 14:13-31',
  'exodo-14-13-31',
  'book-exodo',
  14,
  13,
  14,
  31,
  'Dios abre camino por el mar y salva a Israel del ejército egipcio.',
  'Publicado básico'
),
(
  'pas-1-corintios-5-7',
  '1 Corintios 5:7',
  '1-corintios-5-7',
  'book-1-corintios',
  5,
  7,
  5,
  7,
  'Cristo es presentado como nuestra Pascua.',
  'Publicado básico'
),
(
  'pas-hebreos-11-23-29',
  'Hebreos 11:23-29',
  'hebreos-11-23-29',
  'book-hebreos',
  11,
  23,
  11,
  29,
  'La fe se ve en Moisés, la Pascua y el paso por el mar.',
  'Publicado básico'
);

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
(
  'tem-redencion',
  'Redención',
  'redencion',
  'Dios rescata y libera a su pueblo del pecado, la esclavitud y la muerte.',
  'Publicado básico'
),
(
  'tem-liberacion',
  'Liberación',
  'liberacion',
  'Acción de Dios al rescatar a su pueblo de esclavitud u opresión.',
  'Publicado básico'
),
(
  'tem-pascua',
  'Pascua',
  'pascua',
  'Celebración que recuerda la liberación de Israel de Egipto y apunta a la obra redentora de Cristo.',
  'Publicado básico'
),
(
  'tem-juicio',
  'Juicio',
  'juicio',
  'Acción justa de Dios al confrontar y castigar el pecado.',
  'Publicado básico'
),
(
  'tem-fe',
  'Fe',
  'fe',
  'Confianza en Dios y en su palabra, aun cuando el cumplimiento todavía no se ve por completo.',
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
  'per-faraon-exodo',
  'Faraón del Éxodo',
  'faraon-del-exodo',
  'Gobernante de Egipto que resistió el mandato de Dios de dejar salir a Israel.',
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
  'lug-egipto',
  'Egipto',
  'egipto',
  'Región / nación antigua',
  'Lugar donde Israel fue oprimido y de donde Dios lo liberó por medio del Éxodo.',
  26.8206,
  30.8025,
  5,
  'Aproximada',
  'Publicado básico'
),
(
  'lug-madian',
  'Madián',
  'madian',
  'Región',
  'Región asociada con la vida de Moisés antes de su llamado. Su ubicación exacta se trata con cautela.',
  28.0000,
  35.0000,
  6,
  'Aproximada / debatida',
  'Publicado básico'
),
(
  'lug-mar-rojo',
  'Mar Rojo',
  'mar-rojo',
  'Mar / zona de paso',
  'Lugar asociado con la liberación de Israel cuando Dios abrió camino por el mar. La ruta exacta del Éxodo es debatida.',
  28.0000,
  34.5000,
  6,
  'Aproximada / debatida',
  'Publicado básico'
),
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
);

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
(
  'glo-exodo',
  'Éxodo',
  'exodo',
  'Salida o liberación de Israel de la esclavitud en Egipto por el poder de Dios.',
  'Publicado básico'
),
(
  'glo-moises',
  'Moisés',
  'moises',
  'Siervo de Dios llamado para guiar a Israel fuera de Egipto.',
  'Publicado básico'
),
(
  'glo-pascua',
  'Pascua',
  'pascua',
  'Memorial de la liberación de Israel de Egipto, conectado en el Nuevo Testamento con Cristo.',
  'Publicado básico'
),
(
  'glo-faraon',
  'Faraón',
  'faraon',
  'Título de los reyes de Egipto; en Éxodo representa al opresor que resiste a Dios.',
  'Publicado básico'
);

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-exodo-liberacion',
  'El Éxodo y la liberación de Israel',
  'el-exodo-y-la-liberacion-de-israel',
  'Liberación / redención',
  'Dios libera a Israel de Egipto por medio de Moisés, la Pascua y el paso por el mar.',
  'El Éxodo muestra la fidelidad de Dios a su pacto, su juicio sobre Egipto y su misericordia hacia Israel. La liberación prepara el camino hacia Sinaí y se vuelve una imagen central de redención en toda la Biblia.',
  'Éxodo y Sinaí',
  'Después de los patriarcas y antes del pacto en Sinaí',
  11,
  'Aproximada',
  'Aproximada / debatida',
  1,
  1,
  'Publicado básico'
);

UPDATE events
SET
  title = 'El Éxodo y la liberación de Israel',
  slug = 'el-exodo-y-la-liberacion-de-israel',
  event_type = 'Liberación / redención',
  summary = 'Dios libera a Israel de Egipto por medio de Moisés, la Pascua y el paso por el mar.',
  description = 'El Éxodo muestra la fidelidad de Dios a su pacto, su juicio sobre Egipto y su misericordia hacia Israel. La liberación prepara el camino hacia Sinaí y se vuelve una imagen central de redención en toda la Biblia.',
  biblical_period = 'Éxodo y Sinaí',
  approximate_date = 'Después de los patriarcas y antes del pacto en Sinaí',
  chronological_order = 11,
  temporal_certainty = 'Aproximada',
  geographical_certainty = 'Aproximada / debatida',
  appears_on_timeline = 1,
  appears_on_map = 1,
  status = 'Publicado básico'
WHERE id = 'eve-exodo-liberacion';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-moises-exodo',
  'Moisés y el Éxodo: de esclavitud a redención',
  'moises-y-el-exodo-de-esclavitud-a-redencion',
  'Infografía',
  'Recurso visual para seguir la secuencia: opresión, llamado de Moisés, Pascua, salida de Egipto y paso por el mar.',
  'Infografía sobre Moisés, la Pascua y la liberación de Israel de Egipto.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-exodo-exodo-1-8-14', 'lec-moises-y-exodo', 'Éxodo 1:8-14', 'Israel es oprimido en Egipto.', 1),
('ref-exodo-exodo-3-1-12', 'lec-moises-y-exodo', 'Éxodo 3:1-12', 'Dios llama a Moisés para liberar a su pueblo.', 2),
('ref-exodo-exodo-12-1-14', 'lec-moises-y-exodo', 'Éxodo 12:1-14', 'La Pascua marca la liberación bajo la provisión de Dios.', 3),
('ref-exodo-exodo-14-13-31', 'lec-moises-y-exodo', 'Éxodo 14:13-31', 'Dios salva a Israel abriendo camino por el mar.', 4),
('ref-exodo-1-corintios-5-7', 'lec-moises-y-exodo', '1 Corintios 5:7', 'Cristo es nuestra Pascua.', 5),
('ref-exodo-hebreos-11-23-29', 'lec-moises-y-exodo', 'Hebreos 11:23-29', 'La fe se ve en la historia de Moisés y el Éxodo.', 6);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-exodo-1', 'lec-moises-y-exodo', 'Israel fue oprimido en Egipto, pero Dios oyó el clamor de su pueblo.', 1),
('pt-exodo-2', 'lec-moises-y-exodo', 'Dios preservó y llamó a Moisés para servir como instrumento de liberación.', 2),
('pt-exodo-3', 'lec-moises-y-exodo', 'La Pascua muestra que la salvación viene bajo la provisión de Dios.', 3),
('pt-exodo-4', 'lec-moises-y-exodo', 'El paso por el mar revela que Dios salva cuando no parece haber salida.', 4),
('pt-exodo-5', 'lec-moises-y-exodo', 'El Éxodo apunta hacia Cristo, quien libera de una esclavitud más profunda: el pecado y la muerte.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-exodo-1', 'lec-moises-y-exodo', '¿Qué revela el Éxodo sobre el carácter de Dios?', 1),
('q-exodo-2', 'lec-moises-y-exodo', '¿Por qué la Pascua es importante para entender la redención?', 2),
('q-exodo-3', 'lec-moises-y-exodo', '¿Cómo nos ayuda esta historia a confiar en Dios en medio de situaciones difíciles?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-moises-y-exodo', 'book-exodo'),
('lec-moises-y-exodo', 'book-1-corintios'),
('lec-moises-y-exodo', 'book-hebreos');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-moises-y-exodo', 'pas-exodo-1-8-14', 'contexto de opresión', 1),
('lec-moises-y-exodo', 'pas-exodo-3-1-12', 'llamado de Moisés', 2),
('lec-moises-y-exodo', 'pas-exodo-12-1-14', 'pascua', 3),
('lec-moises-y-exodo', 'pas-exodo-14-13-31', 'liberación', 4),
('lec-moises-y-exodo', 'pas-1-corintios-5-7', 'cumplimiento en Cristo', 5),
('lec-moises-y-exodo', 'pas-hebreos-11-23-29', 'ejemplo de fe', 6);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-moises-y-exodo', 'eve-exodo-liberacion');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-moises-y-exodo', 'tem-redencion'),
('lec-moises-y-exodo', 'tem-liberacion'),
('lec-moises-y-exodo', 'tem-pascua'),
('lec-moises-y-exodo', 'tem-juicio'),
('lec-moises-y-exodo', 'tem-fe');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-moises-y-exodo', 'per-moises'),
('lec-moises-y-exodo', 'per-aaron'),
('lec-moises-y-exodo', 'per-faraon-exodo'),
('lec-moises-y-exodo', 'per-pueblo-israel'),
('lec-moises-y-exodo', 'per-jesus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-moises-y-exodo', 'lug-egipto'),
('lec-moises-y-exodo', 'lug-madian'),
('lec-moises-y-exodo', 'lug-mar-rojo'),
('lec-moises-y-exodo', 'lug-monte-sinai');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-moises-y-exodo', 'glo-exodo'),
('lec-moises-y-exodo', 'glo-moises'),
('lec-moises-y-exodo', 'glo-pascua'),
('lec-moises-y-exodo', 'glo-faraon');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-moises-y-exodo', 'vis-moises-exodo');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-exodo-liberacion', 'per-moises'),
('eve-exodo-liberacion', 'per-aaron'),
('eve-exodo-liberacion', 'per-faraon-exodo'),
('eve-exodo-liberacion', 'per-pueblo-israel');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-exodo-liberacion', 'lug-egipto'),
('eve-exodo-liberacion', 'lug-mar-rojo'),
('eve-exodo-liberacion', 'lug-monte-sinai');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-exodo-liberacion', 'tem-redencion'),
('eve-exodo-liberacion', 'tem-liberacion'),
('eve-exodo-liberacion', 'tem-pascua'),
('eve-exodo-liberacion', 'tem-juicio'),
('eve-exodo-liberacion', 'tem-fe');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-exodo-liberacion', 'book-exodo'),
('eve-exodo-liberacion', 'book-1-corintios'),
('eve-exodo-liberacion', 'book-hebreos');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-exodo-liberacion', 'pas-exodo-1-8-14', 'contexto de opresión', 1),
('eve-exodo-liberacion', 'pas-exodo-3-1-12', 'llamado de Moisés', 2),
('eve-exodo-liberacion', 'pas-exodo-12-1-14', 'pascua', 3),
('eve-exodo-liberacion', 'pas-exodo-14-13-31', 'liberación', 4);