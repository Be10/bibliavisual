DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-pacto-con-abraham';

DELETE FROM event_passages
WHERE event_id = 'eve-pacto-abraham';

DELETE FROM event_books
WHERE event_id = 'eve-pacto-abraham';

DELETE FROM event_topics
WHERE event_id = 'eve-pacto-abraham';

DELETE FROM event_places
WHERE event_id = 'eve-pacto-abraham';

DELETE FROM event_people
WHERE event_id = 'eve-pacto-abraham';

UPDATE lessons
SET
  title = 'El pacto con Abraham',
  slug = 'el-pacto-con-abraham',
  eyebrow = 'Lección 8 de 20 · 7–10 minutos',
  main_idea = 'Dios confirmó su promesa a Abraham por medio de un pacto, mostrando que su plan descansa en su fidelidad y no en la fuerza humana.',
  summary = 'Génesis 15 y 17 muestran cómo Dios formaliza su promesa a Abraham, anuncia descendencia, tierra y una relación de pacto con su pueblo.',
  explanation = 'La promesa dada a Abraham no quedó como una idea general. Dios la confirmó por medio de un pacto. En Génesis 15, Dios reafirma que Abraham tendrá descendencia y que su pueblo heredará la tierra. La escena del pacto muestra la seriedad de la palabra divina y subraya que Dios se compromete fielmente a cumplir lo que prometió. En Génesis 17, el pacto se confirma con el cambio de nombre de Abram a Abraham y con la señal de la circuncisión. El pacto no elimina la necesidad de fe y obediencia, pero muestra que la historia de la redención avanza porque Dios es fiel. En el Nuevo Testamento, la promesa encuentra su cumplimiento mayor en Cristo, la descendencia prometida, por medio de quien llega la bendición.',
  remember = 'El pacto con Abraham muestra que Dios se compromete fielmente a cumplir sus promesas.',
  application = 'El pacto con Abraham nos anima a descansar en la fidelidad de Dios y a responder con fe obediente, aun cuando el cumplimiento parezca lejano.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-pacto-con-abraham';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-genesis-15', 'book-genesis', 15),
('chap-genesis-17', 'book-genesis', 17),
('chap-genesis-22', 'book-genesis', 22),
('chap-galatas-3', 'book-galatas', 3),
('chap-hebreos-6', 'book-hebreos', 6);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-genesis-15',
  'Génesis 15',
  'genesis-15',
  'book-genesis',
  15,
  NULL,
  15,
  NULL,
  'Dios reafirma su promesa a Abraham y establece un pacto relacionado con descendencia y tierra.',
  'Publicado básico'
),
(
  'pas-genesis-17-1-14',
  'Génesis 17:1-14',
  'genesis-17-1-14',
  'book-genesis',
  17,
  1,
  17,
  14,
  'Dios confirma el pacto con Abraham, cambia su nombre y da la señal de la circuncisión.',
  'Publicado básico'
),
(
  'pas-genesis-22-15-18',
  'Génesis 22:15-18',
  'genesis-22-15-18',
  'book-genesis',
  22,
  15,
  22,
  18,
  'Dios reafirma que por la descendencia de Abraham serán benditas las naciones.',
  'Publicado básico'
),
(
  'pas-galatas-3-16',
  'Gálatas 3:16',
  'galatas-3-16',
  'book-galatas',
  3,
  16,
  3,
  16,
  'Pablo conecta la promesa a Abraham con Cristo como la descendencia prometida.',
  'Publicado básico'
),
(
  'pas-hebreos-6-13-18',
  'Hebreos 6:13-18',
  'hebreos-6-13-18',
  'book-hebreos',
  6,
  13,
  6,
  18,
  'La promesa de Dios a Abraham muestra la firmeza de la palabra divina.',
  'Publicado básico'
);

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
(
  'tem-pacto',
  'Pacto',
  'pacto',
  'Compromiso establecido por Dios que define una relación, promesas y responsabilidades dentro de su plan.',
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
  'tem-fe',
  'Fe',
  'fe',
  'Confianza en Dios y en su palabra, aun cuando el cumplimiento todavía no se ve por completo.',
  'Publicado básico'
),
(
  'tem-descendencia',
  'Descendencia',
  'descendencia',
  'Línea familiar o pueblo prometido por Dios, con cumplimiento final en Cristo.',
  'Publicado básico'
),
(
  'tem-mesias',
  'Mesías',
  'mesias',
  'El Ungido prometido por Dios, cumplido en Jesús.',
  'Publicado básico'
);

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
(
  'per-abraham',
  'Abraham',
  'abraham',
  'Patriarca llamado por Dios para recibir la promesa de tierra, descendencia y bendición para las naciones.',
  'Publicado básico'
),
(
  'per-sara',
  'Sara',
  'sara',
  'Esposa de Abraham y madre de Isaac, incluida en la historia de la promesa de Dios.',
  'Publicado básico'
),
(
  'per-isaac',
  'Isaac',
  'isaac',
  'Hijo de Abraham y Sara, heredero de la promesa del pacto.',
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
  'lug-moriah',
  'Moriah',
  'moriah',
  'Región / monte',
  'Lugar asociado con la prueba de Abraham y la reafirmación de la promesa en Génesis 22. Su identificación exacta se trata con cautela.',
  31.7780,
  35.2354,
  10,
  'Debatida',
  'Publicado básico'
);

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
(
  'glo-pacto',
  'Pacto',
  'pacto',
  'Compromiso formal establecido por Dios dentro de su relación con su pueblo.',
  'Publicado básico'
),
(
  'glo-circuncision',
  'Circuncisión',
  'circuncision',
  'Señal del pacto dada a Abraham y a su descendencia en Génesis 17.',
  'Publicado básico'
),
(
  'glo-descendencia',
  'Descendencia',
  'descendencia',
  'Línea prometida por Dios a Abraham, con cumplimiento final en Cristo.',
  'Publicado básico'
),
(
  'glo-fidelidad-de-dios',
  'Fidelidad de Dios',
  'fidelidad-de-dios',
  'Seguridad de que Dios cumple lo que promete porque su carácter es fiel.',
  'Publicado básico'
);

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-pacto-abraham',
  'Pacto con Abraham',
  'pacto-con-abraham',
  'Pacto / promesa',
  'Dios confirma su promesa a Abraham mediante un pacto y anuncia descendencia, tierra y bendición.',
  'El pacto con Abraham establece una línea clave de la historia bíblica: Dios formará un pueblo, dará una tierra y traerá bendición a las naciones. Esta promesa avanza hacia Cristo, la descendencia prometida.',
  'Patriarcas',
  'Tiempo de Abraham',
  8,
  'Aproximada',
  'Aproximada',
  1,
  1,
  'Publicado básico'
);

UPDATE events
SET
  title = 'Pacto con Abraham',
  slug = 'pacto-con-abraham',
  event_type = 'Pacto / promesa',
  summary = 'Dios confirma su promesa a Abraham mediante un pacto y anuncia descendencia, tierra y bendición.',
  description = 'El pacto con Abraham establece una línea clave de la historia bíblica: Dios formará un pueblo, dará una tierra y traerá bendición a las naciones. Esta promesa avanza hacia Cristo, la descendencia prometida.',
  biblical_period = 'Patriarcas',
  approximate_date = 'Tiempo de Abraham',
  chronological_order = 8,
  temporal_certainty = 'Aproximada',
  geographical_certainty = 'Aproximada',
  appears_on_timeline = 1,
  appears_on_map = 1,
  status = 'Publicado básico'
WHERE id = 'eve-pacto-abraham';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-pacto-abraham',
  'El pacto con Abraham',
  'el-pacto-con-abraham',
  'Infografía',
  'Recurso visual para resumir la promesa, el pacto, la señal y el cumplimiento en Cristo.',
  'Infografía sobre el pacto con Abraham, sus promesas y su cumplimiento en Cristo.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-pacto-abraham-genesis-15', 'lec-pacto-con-abraham', 'Génesis 15', 'Dios formaliza su promesa a Abraham por medio de un pacto.', 1),
('ref-pacto-abraham-genesis-17-1-14', 'lec-pacto-con-abraham', 'Génesis 17:1-14', 'Dios confirma el pacto y da la señal de la circuncisión.', 2),
('ref-pacto-abraham-genesis-22-15-18', 'lec-pacto-con-abraham', 'Génesis 22:15-18', 'La promesa de bendición a las naciones es reafirmada.', 3),
('ref-pacto-abraham-galatas-3-16', 'lec-pacto-con-abraham', 'Gálatas 3:16', 'La promesa apunta finalmente a Cristo.', 4),
('ref-pacto-abraham-hebreos-6-13-18', 'lec-pacto-con-abraham', 'Hebreos 6:13-18', 'La palabra de Dios es firme y confiable.', 5);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-pacto-abraham-1', 'lec-pacto-con-abraham', 'Dios no solo hizo una promesa a Abraham; también la confirmó por medio de un pacto.', 1),
('pt-pacto-abraham-2', 'lec-pacto-con-abraham', 'El pacto muestra que el plan de Dios descansa en su fidelidad.', 2),
('pt-pacto-abraham-3', 'lec-pacto-con-abraham', 'La señal de la circuncisión marcaba pertenencia al pacto en la descendencia de Abraham.', 3),
('pt-pacto-abraham-4', 'lec-pacto-con-abraham', 'El pacto mira hacia una descendencia, una tierra y bendición para las naciones.', 4),
('pt-pacto-abraham-5', 'lec-pacto-con-abraham', 'El Nuevo Testamento muestra que Cristo es el cumplimiento central de la promesa.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-pacto-abraham-1', 'lec-pacto-con-abraham', '¿Qué diferencia hay entre una promesa general y un pacto confirmado por Dios?', 1),
('q-pacto-abraham-2', 'lec-pacto-con-abraham', '¿Qué enseña el pacto con Abraham sobre la fidelidad de Dios?', 2),
('q-pacto-abraham-3', 'lec-pacto-con-abraham', '¿Cómo conecta Gálatas 3 la promesa de Abraham con Cristo?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-pacto-con-abraham', 'book-genesis'),
('lec-pacto-con-abraham', 'book-galatas'),
('lec-pacto-con-abraham', 'book-hebreos');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-pacto-con-abraham', 'pas-genesis-15', 'principal', 1),
('lec-pacto-con-abraham', 'pas-genesis-17-1-14', 'apoyo', 2),
('lec-pacto-con-abraham', 'pas-genesis-22-15-18', 'reafirmación', 3),
('lec-pacto-con-abraham', 'pas-galatas-3-16', 'cumplimiento en Cristo', 4),
('lec-pacto-con-abraham', 'pas-hebreos-6-13-18', 'seguridad de la promesa', 5);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-pacto-con-abraham', 'eve-pacto-abraham');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-pacto-con-abraham', 'tem-pacto'),
('lec-pacto-con-abraham', 'tem-promesa'),
('lec-pacto-con-abraham', 'tem-fe'),
('lec-pacto-con-abraham', 'tem-descendencia'),
('lec-pacto-con-abraham', 'tem-mesias');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-pacto-con-abraham', 'per-abraham'),
('lec-pacto-con-abraham', 'per-sara'),
('lec-pacto-con-abraham', 'per-isaac'),
('lec-pacto-con-abraham', 'per-jesus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-pacto-con-abraham', 'lug-canaan'),
('lec-pacto-con-abraham', 'lug-moriah');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-pacto-con-abraham', 'glo-pacto'),
('lec-pacto-con-abraham', 'glo-circuncision'),
('lec-pacto-con-abraham', 'glo-descendencia'),
('lec-pacto-con-abraham', 'glo-fidelidad-de-dios');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-pacto-con-abraham', 'vis-pacto-abraham');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-pacto-abraham', 'per-abraham'),
('eve-pacto-abraham', 'per-sara'),
('eve-pacto-abraham', 'per-isaac'),
('eve-pacto-abraham', 'per-jesus');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-pacto-abraham', 'lug-canaan'),
('eve-pacto-abraham', 'lug-moriah');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-pacto-abraham', 'tem-pacto'),
('eve-pacto-abraham', 'tem-promesa'),
('eve-pacto-abraham', 'tem-fe'),
('eve-pacto-abraham', 'tem-descendencia'),
('eve-pacto-abraham', 'tem-mesias');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-pacto-abraham', 'book-genesis'),
('eve-pacto-abraham', 'book-galatas'),
('eve-pacto-abraham', 'book-hebreos');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-pacto-abraham', 'pas-genesis-15', 'principal', 1),
('eve-pacto-abraham', 'pas-genesis-17-1-14', 'apoyo', 2),
('eve-pacto-abraham', 'pas-genesis-22-15-18', 'reafirmación', 3),
('eve-pacto-abraham', 'pas-galatas-3-16', 'cumplimiento en Cristo', 4);