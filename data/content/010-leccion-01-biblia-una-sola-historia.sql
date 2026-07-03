DELETE FROM lesson_visual_resources
WHERE lesson_id = 'lec-biblia-una-sola-historia';

DELETE FROM lesson_glossary
WHERE lesson_id = 'lec-biblia-una-sola-historia';

DELETE FROM lesson_places
WHERE lesson_id = 'lec-biblia-una-sola-historia';

DELETE FROM lesson_people
WHERE lesson_id = 'lec-biblia-una-sola-historia';

DELETE FROM lesson_topics
WHERE lesson_id = 'lec-biblia-una-sola-historia';

DELETE FROM lesson_events
WHERE lesson_id = 'lec-biblia-una-sola-historia';

DELETE FROM lesson_passages
WHERE lesson_id = 'lec-biblia-una-sola-historia';

DELETE FROM lesson_books
WHERE lesson_id = 'lec-biblia-una-sola-historia';

DELETE FROM lesson_questions
WHERE lesson_id = 'lec-biblia-una-sola-historia';

DELETE FROM lesson_points
WHERE lesson_id = 'lec-biblia-una-sola-historia';

DELETE FROM lesson_bible_refs
WHERE lesson_id = 'lec-biblia-una-sola-historia';

UPDATE lessons
SET
  title = 'La Biblia como una sola historia',
  slug = 'la-biblia-como-una-sola-historia',
  eyebrow = 'Lección 1 de 20 · 7–10 minutos',
  main_idea = 'La Biblia cuenta una sola historia unida por el plan de Dios: creación, caída, promesa, redención y nueva creación.',
  summary = 'La Biblia no es una colección de historias desconectadas. Es una gran historia acerca de Dios, la humanidad, el pecado, la redención y el cumplimiento en Jesús.',
  explanation = 'La Biblia está formada por muchos libros escritos en distintos momentos, por diferentes autores humanos y en diversos contextos. Sin embargo, no debe estudiarse como si fuera una colección de historias aisladas. Desde Génesis hasta Apocalipsis hay un hilo principal: Dios está revelando su carácter, su voluntad y su plan para redimir a la humanidad. En el Nuevo Testamento, esa esperanza se cumple en Jesús. Él es el Mesías prometido, el Salvador, el Rey y el centro de toda la historia bíblica.',
  remember = 'Toda la Biblia apunta al plan de Dios cumplido en Jesús.',
  application = 'Cuando entendemos que la Biblia tiene una sola historia, cada parte empieza a tener más sentido.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-biblia-una-sola-historia';

INSERT OR IGNORE INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-biblia-lucas-24-27', 'lec-biblia-una-sola-historia', 'Lucas 24:27', 'Jesús explicó cómo las Escrituras apuntaban hacia Él.', 1),
('ref-biblia-lucas-24-44', 'lec-biblia-una-sola-historia', 'Lucas 24:44', 'Jesús habló de lo escrito acerca de Él en la Ley, los Profetas y los Salmos.', 2),
('ref-biblia-juan-5-39', 'lec-biblia-una-sola-historia', 'Juan 5:39', 'Las Escrituras dan testimonio de Jesús.', 3),
('ref-biblia-2-timoteo-3-16-17', 'lec-biblia-una-sola-historia', '2 Timoteo 3:16-17', 'Toda la Escritura es útil para enseñar, corregir e instruir.', 4);

INSERT OR IGNORE INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-biblia-historia-1', 'lec-biblia-una-sola-historia', 'La Biblia tiene muchos libros, pero una historia central.', 1),
('pt-biblia-historia-2', 'lec-biblia-una-sola-historia', 'Esa historia comienza con Dios como Creador.', 2),
('pt-biblia-historia-3', 'lec-biblia-una-sola-historia', 'El pecado rompe la relación entre Dios y la humanidad.', 3),
('pt-biblia-historia-4', 'lec-biblia-una-sola-historia', 'Dios promete redención y prepara el camino hacia Jesús.', 4),
('pt-biblia-historia-5', 'lec-biblia-una-sola-historia', 'Jesús es el centro y cumplimiento de la historia bíblica.', 5);

INSERT OR IGNORE INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-biblia-historia-1', 'lec-biblia-una-sola-historia', '¿Por qué no debemos leer la Biblia como historias desconectadas?', 1),
('q-biblia-historia-2', 'lec-biblia-una-sola-historia', 'Según Lucas 24, ¿cómo explicó Jesús las Escrituras?', 2),
('q-biblia-historia-3', 'lec-biblia-una-sola-historia', '¿Qué significa que Jesús sea el centro de la historia bíblica?', 3);

INSERT OR IGNORE INTO lesson_books (lesson_id, book_id) VALUES
('lec-biblia-una-sola-historia', 'book-genesis'),
('lec-biblia-una-sola-historia', 'book-lucas'),
('lec-biblia-una-sola-historia', 'book-juan'),
('lec-biblia-una-sola-historia', 'book-2-timoteo'),
('lec-biblia-una-sola-historia', 'book-apocalipsis');

INSERT OR IGNORE INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-biblia-una-sola-historia', 'pas-lucas-24-27', 'principal', 1),
('lec-biblia-una-sola-historia', 'pas-lucas-24-44', 'principal', 2),
('lec-biblia-una-sola-historia', 'pas-juan-5-39', 'principal', 3),
('lec-biblia-una-sola-historia', 'pas-2-timoteo-3-16-17', 'principal', 4);

INSERT OR IGNORE INTO lesson_events (lesson_id, event_id) VALUES
('lec-biblia-una-sola-historia', 'eve-historia-biblica-general'),
('lec-biblia-una-sola-historia', 'eve-creacion'),
('lec-biblia-una-sola-historia', 'eve-caida'),
('lec-biblia-una-sola-historia', 'eve-promesa-redencion'),
('lec-biblia-una-sola-historia', 'eve-venida-de-jesus');

INSERT OR IGNORE INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-biblia-una-sola-historia', 'tem-redencion'),
('lec-biblia-una-sola-historia', 'tem-mesias'),
('lec-biblia-una-sola-historia', 'tem-evangelio'),
('lec-biblia-una-sola-historia', 'tem-creacion'),
('lec-biblia-una-sola-historia', 'tem-nueva-creacion');

INSERT OR IGNORE INTO lesson_people (lesson_id, person_id) VALUES
('lec-biblia-una-sola-historia', 'per-jesus'),
('lec-biblia-una-sola-historia', 'per-moises'),
('lec-biblia-una-sola-historia', 'per-profetas'),
('lec-biblia-una-sola-historia', 'per-apostoles');

INSERT OR IGNORE INTO lesson_places (lesson_id, place_id) VALUES
('lec-biblia-una-sola-historia', 'lug-jerusalen'),
('lec-biblia-una-sola-historia', 'lug-camino-emaus');

INSERT OR IGNORE INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-biblia-una-sola-historia', 'glo-biblia'),
('lec-biblia-una-sola-historia', 'glo-redencion'),
('lec-biblia-una-sola-historia', 'glo-mesias'),
('lec-biblia-una-sola-historia', 'glo-evangelio');

INSERT OR IGNORE INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-biblia-una-sola-historia', 'vis-biblia-en-una-linea');