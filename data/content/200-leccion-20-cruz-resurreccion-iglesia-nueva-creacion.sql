DELETE FROM lesson_visual_resources WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM lesson_glossary WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM lesson_places WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM lesson_people WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM lesson_topics WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM lesson_events WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM lesson_passages WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM lesson_books WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM lesson_questions WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM lesson_points WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM lesson_bible_refs WHERE lesson_id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';

DELETE FROM event_passages WHERE event_id = 'eve-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM event_books WHERE event_id = 'eve-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM event_topics WHERE event_id = 'eve-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM event_places WHERE event_id = 'eve-cruz-resurreccion-iglesia-nueva-creacion';
DELETE FROM event_people WHERE event_id = 'eve-cruz-resurreccion-iglesia-nueva-creacion';

UPDATE lessons
SET
  title = 'Cruz, resurrección, iglesia y nueva creación',
  slug = 'cruz-resurreccion-iglesia-y-nueva-creacion',
  eyebrow = 'Lección 20 de 20 · 7–10 minutos',
  main_idea = 'La muerte y resurrección de Jesús cumplen la redención prometida, dan nacimiento a la misión de la iglesia y aseguran la esperanza de la nueva creación.',
  summary = 'La historia bíblica culmina en Cristo crucificado y resucitado, continúa con la iglesia enviada al mundo y termina con Dios haciendo nuevas todas las cosas.',
  explanation = 'La cruz y la resurrección son el centro del evangelio. En la cruz, Jesús carga el pecado y vence por medio de su sacrificio. En la resurrección, Dios confirma su victoria sobre la muerte y abre una nueva creación. Después de resucitar, Jesús envía a sus discípulos a hacer discípulos de todas las naciones. En Pentecostés, el Espíritu Santo es derramado y la iglesia comienza su misión como pueblo del nuevo pacto. La Biblia no termina con una humanidad escapando de la creación, sino con Dios renovando todas las cosas: cielo nuevo, tierra nueva, resurrección, justicia, adoración y presencia plena de Dios con su pueblo. Así, la historia que comenzó con creación termina con nueva creación, y todo se centra en el Cordero.',
  remember = 'Cristo murió, resucitó, envió a su iglesia y volverá para hacer nuevas todas las cosas.',
  application = 'Esta lección nos llama a vivir en la esperanza de la resurrección, participar en la misión de la iglesia y esperar con fidelidad la nueva creación.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-cruz-resurreccion-iglesia-nueva-creacion';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-mateo-27', 'book-mateo', 27),
('chap-mateo-28', 'book-mateo', 28),
('chap-lucas-24', 'book-lucas', 24),
('chap-hechos-1', 'book-hechos', 1),
('chap-hechos-2', 'book-hechos', 2),
('chap-romanos-8', 'book-romanos', 8),
('chap-1-corintios-15', 'book-1-corintios', 15),
('chap-efesios-2', 'book-efesios', 2),
('chap-apocalipsis-21', 'book-apocalipsis', 21),
('chap-apocalipsis-22', 'book-apocalipsis', 22);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
('pas-mateo-27-45-54', 'Mateo 27:45-54', 'mateo-27-45-54', 'book-mateo', 27, 45, 27, 54, 'La muerte de Jesús revela el peso del juicio y la identidad del Hijo de Dios.', 'Publicado básico'),
('pas-mateo-28-1-10', 'Mateo 28:1-10', 'mateo-28-1-10', 'book-mateo', 28, 1, 28, 10, 'Jesús resucita y las mujeres reciben el anuncio de la victoria.', 'Publicado básico'),
('pas-mateo-28-18-20', 'Mateo 28:18-20', 'mateo-28-18-20', 'book-mateo', 28, 18, 28, 20, 'Jesús envía a sus discípulos a hacer discípulos de todas las naciones.', 'Publicado básico'),
('pas-lucas-24-44-49', 'Lucas 24:44-49', 'lucas-24-44-49', 'book-lucas', 24, 44, 24, 49, 'Jesús explica el cumplimiento de las Escrituras y anuncia la misión.', 'Publicado básico'),
('pas-hechos-1-8', 'Hechos 1:8', 'hechos-1-8', 'book-hechos', 1, 8, 1, 8, 'Jesús promete poder del Espíritu para testificar hasta lo último de la tierra.', 'Publicado básico'),
('pas-hechos-2-1-41', 'Hechos 2:1-41', 'hechos-2-1-41', 'book-hechos', 2, 1, 2, 41, 'Pentecostés, derramamiento del Espíritu y comienzo visible de la misión de la iglesia.', 'Publicado básico'),
('pas-1-corintios-15-3-8', '1 Corintios 15:3-8', '1-corintios-15-3-8', 'book-1-corintios', 15, 3, 15, 8, 'Resumen apostólico del evangelio: Cristo murió, fue sepultado, resucitó y apareció.', 'Publicado básico'),
('pas-1-corintios-15-20-28', '1 Corintios 15:20-28', '1-corintios-15-20-28', 'book-1-corintios', 15, 20, 15, 28, 'La resurrección de Cristo asegura la victoria final sobre la muerte.', 'Publicado básico'),
('pas-efesios-2-11-22', 'Efesios 2:11-22', 'efesios-2-11-22', 'book-efesios', 2, 11, 2, 22, 'Cristo forma un solo pueblo y edifica una morada de Dios por el Espíritu.', 'Publicado básico'),
('pas-romanos-8-18-25', 'Romanos 8:18-25', 'romanos-8-18-25', 'book-romanos', 8, 18, 8, 25, 'La creación espera la redención y la gloria venidera.', 'Publicado básico'),
('pas-apocalipsis-21-22', 'Apocalipsis 21–22', 'apocalipsis-21-22', 'book-apocalipsis', 21, NULL, 22, NULL, 'Visión de la nueva creación, la presencia de Dios y la restauración final.', 'Publicado básico');

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
('tem-cruz', 'Cruz', 'cruz', 'Lugar y símbolo de la muerte sacrificial de Cristo por los pecadores.', 'Publicado básico'),
('tem-resurreccion', 'Resurrección', 'resurreccion', 'Victoria de Cristo sobre la muerte y esperanza futura de su pueblo.', 'Publicado básico'),
('tem-iglesia', 'Iglesia', 'iglesia', 'Pueblo del nuevo pacto unido a Cristo y enviado a anunciar el evangelio.', 'Publicado básico'),
('tem-espiritu-santo', 'Espíritu Santo', 'espiritu-santo', 'Tercera persona de la Trinidad, prometido y derramado sobre la iglesia.', 'Publicado básico'),
('tem-mision', 'Misión', 'mision', 'Envío del pueblo de Dios para anunciar el evangelio y hacer discípulos.', 'Publicado básico'),
('tem-nueva-creacion', 'Nueva creación', 'nueva-creacion', 'Renovación final de todas las cosas bajo el reinado de Dios.', 'Publicado básico'),
('tem-evangelio', 'Evangelio', 'evangelio', 'La buena noticia de salvación en Jesús.', 'Publicado básico'),
('tem-redencion', 'Redención', 'redencion', 'Dios rescata y libera a su pueblo del pecado, la esclavitud y la muerte.', 'Publicado básico');

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
('per-jesus', 'Jesús', 'jesus', 'El Hijo de Dios, Mesías prometido y centro de la historia bíblica.', 'Publicado básico'),
('per-apostoles', 'Los apóstoles', 'apostoles', 'Testigos enviados para anunciar a Jesús y enseñar a la iglesia.', 'Publicado básico'),
('per-pedro', 'Pedro', 'pedro', 'Apóstol que predicó en Pentecostés y anunció a Cristo resucitado.', 'Publicado básico'),
('per-iglesia-primitiva', 'La iglesia primitiva', 'iglesia-primitiva', 'Primeros creyentes reunidos por el evangelio y enviados en misión.', 'Publicado básico'),
('per-naciones', 'Las naciones', 'las-naciones', 'Pueblos llamados a recibir la bendición prometida en Cristo.', 'Publicado básico');

INSERT OR IGNORE INTO places (
  id, name, slug, place_type, summary, latitude, longitude, map_zoom,
  geographical_certainty, status
) VALUES
('lug-jerusalen', 'Jerusalén', 'jerusalen', 'Ciudad', 'Ciudad central en la historia bíblica, relacionada con el templo, Jesús y la iglesia primitiva.', 31.7780, 35.2354, 10, 'Alta', 'Publicado básico'),
('lug-golgota', 'Gólgota', 'golgota', 'Lugar', 'Lugar asociado con la crucifixión de Jesús cerca de Jerusalén. Su ubicación exacta se trata con cautela.', 31.7780, 35.2290, 11, 'Aproximada / debatida', 'Publicado básico'),
('lug-sepulcro-jesus', 'Sepulcro de Jesús', 'sepulcro-de-jesus', 'Lugar', 'Lugar asociado con la sepultura y resurrección de Jesús. Su identificación se trata con cautela.', 31.7780, 35.2290, 11, 'Aproximada / debatida', 'Publicado básico'),
('lug-todas-las-naciones', 'Todas las naciones', 'todas-las-naciones', 'Alcance global', 'Alcance mundial de la misión de la iglesia según el mandato de Jesús.', NULL, NULL, NULL, 'No aplica', 'Publicado básico'),
('lug-nueva-creacion', 'Nueva creación', 'nueva-creacion', 'Esperanza final', 'Realidad final de cielo nuevo y tierra nueva donde Dios habita con su pueblo.', NULL, NULL, NULL, 'Escatológica', 'Publicado básico');

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
('glo-cruz', 'Cruz', 'cruz', 'Muerte sacrificial de Jesús por los pecadores.', 'Publicado básico'),
('glo-resurreccion', 'Resurrección', 'resurreccion', 'Victoria de Cristo sobre la muerte y esperanza de vida futura.', 'Publicado básico'),
('glo-iglesia', 'Iglesia', 'iglesia', 'Pueblo reunido por Cristo y enviado a anunciar el evangelio.', 'Publicado básico'),
('glo-pentecostes', 'Pentecostés', 'pentecostes', 'Evento en el que el Espíritu Santo fue derramado sobre los discípulos.', 'Publicado básico'),
('glo-gran-comision', 'Gran Comisión', 'gran-comision', 'Mandato de Jesús de hacer discípulos de todas las naciones.', 'Publicado básico'),
('glo-nueva-creacion', 'Nueva creación', 'nueva-creacion', 'Renovación final de todas las cosas en la consumación del reino de Dios.', 'Publicado básico');

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-cruz-resurreccion-iglesia-nueva-creacion',
  'Cruz, resurrección, iglesia y nueva creación',
  'cruz-resurreccion-iglesia-y-nueva-creacion',
  'Redención / misión / consumación',
  'Cristo muere y resucita, envía a su iglesia y asegura la esperanza final de la nueva creación.',
  'La cruz y la resurrección son el centro del evangelio. La iglesia nace como pueblo enviado por Cristo y capacitado por el Espíritu. La historia bíblica culmina con la nueva creación, donde Dios habita para siempre con su pueblo.',
  'Nuevo Testamento y consumación',
  'Desde la muerte y resurrección de Cristo hasta la esperanza final',
  20,
  'Alta / escatológica',
  'Alta / escatológica',
  1,
  1,
  'Publicado básico'
);

UPDATE events
SET
  title = 'Cruz, resurrección, iglesia y nueva creación',
  slug = 'cruz-resurreccion-iglesia-y-nueva-creacion',
  event_type = 'Redención / misión / consumación',
  summary = 'Cristo muere y resucita, envía a su iglesia y asegura la esperanza final de la nueva creación.',
  description = 'La cruz y la resurrección son el centro del evangelio. La iglesia nace como pueblo enviado por Cristo y capacitado por el Espíritu. La historia bíblica culmina con la nueva creación, donde Dios habita para siempre con su pueblo.',
  biblical_period = 'Nuevo Testamento y consumación',
  approximate_date = 'Desde la muerte y resurrección de Cristo hasta la esperanza final',
  chronological_order = 20,
  temporal_certainty = 'Alta / escatológica',
  geographical_certainty = 'Alta / escatológica',
  appears_on_timeline = 1,
  appears_on_map = 1,
  status = 'Publicado básico'
WHERE id = 'eve-cruz-resurreccion-iglesia-nueva-creacion';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-cruz-resurreccion-iglesia-nueva-creacion',
  'Del evangelio a la nueva creación',
  'del-evangelio-a-la-nueva-creacion',
  'Infografía',
  'Recurso visual para mostrar la secuencia final: cruz, resurrección, misión de la iglesia y nueva creación.',
  'Infografía sobre cruz, resurrección, iglesia, misión y nueva creación.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-final-mateo-27-45-54', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'Mateo 27:45-54', 'La muerte de Jesús revela el centro de la redención.', 1),
('ref-final-mateo-28-1-10', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'Mateo 28:1-10', 'Jesús resucita victorioso.', 2),
('ref-final-mateo-28-18-20', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'Mateo 28:18-20', 'Jesús envía a sus discípulos a todas las naciones.', 3),
('ref-final-lucas-24-44-49', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'Lucas 24:44-49', 'Jesús conecta Escrituras, evangelio y misión.', 4),
('ref-final-hechos-1-8', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'Hechos 1:8', 'El Espíritu capacita el testimonio de la iglesia.', 5),
('ref-final-hechos-2-1-41', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'Hechos 2:1-41', 'Pentecostés marca el comienzo visible de la misión de la iglesia.', 6),
('ref-final-1-corintios-15-3-8', 'lec-cruz-resurreccion-iglesia-nueva-creacion', '1 Corintios 15:3-8', 'Resumen apostólico del evangelio.', 7),
('ref-final-1-corintios-15-20-28', 'lec-cruz-resurreccion-iglesia-nueva-creacion', '1 Corintios 15:20-28', 'La resurrección de Cristo asegura la victoria final.', 8),
('ref-final-efesios-2-11-22', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'Efesios 2:11-22', 'Cristo forma un solo pueblo y morada de Dios por el Espíritu.', 9),
('ref-final-apocalipsis-21-22', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'Apocalipsis 21–22', 'La Biblia culmina con la nueva creación.', 10);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-final-1', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'La cruz muestra que Jesús cargó el pecado y cumplió la redención prometida.', 1),
('pt-final-2', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'La resurrección confirma la victoria de Cristo sobre la muerte.', 2),
('pt-final-3', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'Jesús envía a su iglesia a anunciar el evangelio a todas las naciones.', 3),
('pt-final-4', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'El Espíritu Santo capacita a la iglesia para vivir y testificar como pueblo del nuevo pacto.', 4),
('pt-final-5', 'lec-cruz-resurreccion-iglesia-nueva-creacion', 'La historia bíblica termina con Dios haciendo nuevas todas las cosas.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-final-1', 'lec-cruz-resurreccion-iglesia-nueva-creacion', '¿Por qué la cruz y la resurrección son el centro del evangelio?', 1),
('q-final-2', 'lec-cruz-resurreccion-iglesia-nueva-creacion', '¿Cuál es la misión de la iglesia según Jesús?', 2),
('q-final-3', 'lec-cruz-resurreccion-iglesia-nueva-creacion', '¿Cómo nos anima la esperanza de la nueva creación a vivir hoy?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'book-mateo'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'book-lucas'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'book-hechos'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'book-romanos'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'book-1-corintios'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'book-efesios'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'book-apocalipsis');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'pas-mateo-27-45-54', 'cruz', 1),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'pas-mateo-28-1-10', 'resurrección', 2),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'pas-mateo-28-18-20', 'misión', 3),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'pas-lucas-24-44-49', 'cumplimiento y misión', 4),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'pas-hechos-1-8', 'testimonio', 5),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'pas-hechos-2-1-41', 'pentecostés', 6),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'pas-1-corintios-15-3-8', 'evangelio', 7),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'pas-1-corintios-15-20-28', 'victoria final', 8),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'pas-efesios-2-11-22', 'iglesia', 9),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'pas-apocalipsis-21-22', 'nueva creación', 10);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'eve-cruz-resurreccion-iglesia-nueva-creacion');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'tem-cruz'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'tem-resurreccion'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'tem-iglesia'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'tem-espiritu-santo'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'tem-mision'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'tem-nueva-creacion'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'tem-evangelio'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'tem-redencion');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'per-jesus'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'per-apostoles'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'per-pedro'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'per-iglesia-primitiva'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'per-naciones');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'lug-jerusalen'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'lug-golgota'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'lug-sepulcro-jesus'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'lug-todas-las-naciones'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'lug-nueva-creacion');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'glo-cruz'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'glo-resurreccion'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'glo-iglesia'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'glo-pentecostes'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'glo-gran-comision'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'glo-nueva-creacion');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'vis-cruz-resurreccion-iglesia-nueva-creacion');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'per-jesus'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'per-apostoles'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'per-pedro'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'per-iglesia-primitiva'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'per-naciones');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'lug-jerusalen'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'lug-golgota'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'lug-sepulcro-jesus'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'lug-todas-las-naciones'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'lug-nueva-creacion');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'tem-cruz'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'tem-resurreccion'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'tem-iglesia'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'tem-espiritu-santo'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'tem-mision'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'tem-nueva-creacion'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'tem-evangelio'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'tem-redencion');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'book-mateo'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'book-lucas'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'book-hechos'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'book-romanos'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'book-1-corintios'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'book-efesios'),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'book-apocalipsis');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'pas-mateo-27-45-54', 'cruz', 1),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'pas-mateo-28-1-10', 'resurrección', 2),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'pas-mateo-28-18-20', 'misión', 3),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'pas-hechos-2-1-41', 'pentecostés', 4),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'pas-1-corintios-15-3-8', 'evangelio', 5),
('eve-cruz-resurreccion-iglesia-nueva-creacion', 'pas-apocalipsis-21-22', 'nueva creación', 6);