UPDATE lessons
SET
  title = 'Dios crea todas las cosas',
  slug = 'dios-crea-todas-las-cosas',
  eyebrow = 'Lección 2 de 20 · 7–10 minutos',
  main_idea = 'Dios es el Creador de todas las cosas, y todo lo que hizo era bueno.',
  summary = 'La Biblia comienza mostrando que Dios creó todo con poder, orden, propósito y bondad.',
  explanation = 'La historia bíblica comienza con Dios. Antes de hablar del pecado, de Israel, de los reyes o de los profetas, la Biblia nos muestra que Dios creó los cielos, la tierra y todo lo que existe. La creación no aparece como un accidente ni como algo sin sentido, sino como una obra buena, ordenada y llena de propósito. Entender la creación nos ayuda a comprender el resto de la Biblia: el mundo pertenece a Dios, la humanidad depende de Él y todo fue hecho para su gloria.',
  remember = 'Dios creó todas las cosas, y todo lo que hizo era bueno.',
  application = 'Cuando miramos la creación, podemos recordar que Dios es poderoso, sabio y digno de adoración.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-dios-crea-todas-las-cosas';

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-creacion-genesis-1-1', 'lec-dios-crea-todas-las-cosas', 'Génesis 1:1', 'Dios crea los cielos y la tierra.', 1),
('ref-creacion-genesis-1-31', 'lec-dios-crea-todas-las-cosas', 'Génesis 1:31', 'Dios declara buena su creación.', 2),
('ref-creacion-salmo-19-1', 'lec-dios-crea-todas-las-cosas', 'Salmo 19:1', 'La creación anuncia la gloria de Dios.', 3),
('ref-creacion-juan-1-3', 'lec-dios-crea-todas-las-cosas', 'Juan 1:3', 'Todas las cosas fueron hechas por medio de Cristo.', 4);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-creacion-1', 'lec-dios-crea-todas-las-cosas', 'La Biblia comienza con Dios, no con el ser humano.', 1),
('pt-creacion-2', 'lec-dios-crea-todas-las-cosas', 'Dios creó los cielos, la tierra y todo lo que existe.', 2),
('pt-creacion-3', 'lec-dios-crea-todas-las-cosas', 'La creación muestra orden, propósito y bondad.', 3),
('pt-creacion-4', 'lec-dios-crea-todas-las-cosas', 'El ser humano fue creado por Dios y depende de Él.', 4),
('pt-creacion-5', 'lec-dios-crea-todas-las-cosas', 'Entender la creación nos ayuda a ver que la historia bíblica comienza con un mundo bueno creado por Dios.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-creacion-1', 'lec-dios-crea-todas-las-cosas', '¿Quién aparece primero en la historia bíblica?', 1),
('q-creacion-2', 'lec-dios-crea-todas-las-cosas', '¿Qué nos enseña la creación acerca de Dios?', 2),
('q-creacion-3', 'lec-dios-crea-todas-las-cosas', '¿Por qué es importante saber que Dios creó todo bueno?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-dios-crea-todas-las-cosas', 'book-genesis'),
('lec-dios-crea-todas-las-cosas', 'book-salmos'),
('lec-dios-crea-todas-las-cosas', 'book-juan');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-dios-crea-todas-las-cosas', 'pas-genesis-1-2', 'principal', 1),
('lec-dios-crea-todas-las-cosas', 'pas-salmo-19-1', 'apoyo', 2),
('lec-dios-crea-todas-las-cosas', 'pas-juan-1-3', 'apoyo', 3);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-dios-crea-todas-las-cosas', 'eve-creacion');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-dios-crea-todas-las-cosas', 'tem-creacion');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-dios-crea-todas-las-cosas', 'glo-biblia');