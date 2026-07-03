UPDATE lessons
SET
  title = 'La caída y el pecado',
  slug = 'la-caida-y-el-pecado',
  eyebrow = 'Lección 3 de 20 · 7–10 minutos',
  main_idea = 'El pecado entró en la historia humana cuando el ser humano desobedeció a Dios, rompiendo su relación con Él.',
  summary = 'Génesis 3 muestra cómo la humanidad desobedeció a Dios y cómo el pecado afectó la relación con Dios, con los demás y con la creación.',
  explanation = 'Después de mostrar que Dios creó todo bueno, la Biblia explica por qué el mundo ya no es como debería ser. Génesis 3 relata la desobediencia del ser humano. Adán y Eva escucharon la mentira de la serpiente, dudaron de la palabra de Dios y tomaron lo que Dios había prohibido. Este acto no fue solamente comer un fruto; fue rebelión contra Dios. Desde ese momento, el pecado trajo culpa, vergüenza, separación, dolor y muerte. Pero incluso en medio del juicio, Dios no abandonó su plan. La historia bíblica continúa mostrando que Dios prepararía una redención.',
  remember = 'El pecado rompió la relación entre Dios y la humanidad, pero Dios comenzó a revelar su plan de redención.',
  application = 'Reconocer el pecado nos ayuda a entender nuestra necesidad de Dios, de perdón y de redención en Cristo.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-caida-y-pecado';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-romanos-3', 'book-romanos', 3),
('chap-romanos-6', 'book-romanos', 6);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
(
  'pas-romanos-3-23',
  'Romanos 3:23',
  'romanos-3-23',
  'book-romanos',
  3,
  23,
  3,
  23,
  'Todos pecaron y están destituidos de la gloria de Dios.',
  'Publicado básico'
),
(
  'pas-romanos-6-23',
  'Romanos 6:23',
  'romanos-6-23',
  'book-romanos',
  6,
  23,
  6,
  23,
  'La paga del pecado es muerte, pero Dios da vida eterna en Cristo.',
  'Publicado básico'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-caida-genesis-3', 'lec-caida-y-pecado', 'Génesis 3', 'Relato de la caída y entrada del pecado.', 1),
('ref-caida-romanos-3-23', 'lec-caida-y-pecado', 'Romanos 3:23', 'Todos pecaron delante de Dios.', 2),
('ref-caida-romanos-6-23', 'lec-caida-y-pecado', 'Romanos 6:23', 'El pecado trae muerte, pero Dios ofrece vida en Cristo.', 3);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-caida-1', 'lec-caida-y-pecado', 'Dios creó un mundo bueno, pero el ser humano desobedeció su palabra.', 1),
('pt-caida-2', 'lec-caida-y-pecado', 'La serpiente puso en duda la bondad y la autoridad de Dios.', 2),
('pt-caida-3', 'lec-caida-y-pecado', 'El pecado produjo culpa, vergüenza, separación y muerte.', 3),
('pt-caida-4', 'lec-caida-y-pecado', 'El pecado no es solo un error externo; es rebelión contra Dios.', 4),
('pt-caida-5', 'lec-caida-y-pecado', 'Dios juzgó el pecado, pero también comenzó a revelar esperanza de redención.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-caida-1', 'lec-caida-y-pecado', '¿Qué mentira presentó la serpiente sobre Dios?', 1),
('q-caida-2', 'lec-caida-y-pecado', '¿Qué consecuencias trajo el pecado según Génesis 3?', 2),
('q-caida-3', 'lec-caida-y-pecado', '¿Por qué necesitamos redención?', 3);

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
(
  'tem-pecado',
  'Pecado',
  'pecado',
  'Rebelión contra Dios que rompe la relación con Él y afecta toda la vida humana.',
  'Publicado básico'
),
(
  'tem-caida',
  'Caída',
  'caida',
  'Entrada del pecado en la historia humana por la desobediencia de Adán y Eva.',
  'Publicado básico'
);

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
(
  'per-adan',
  'Adán',
  'adan',
  'Primer hombre creado por Dios; su desobediencia está relacionada con la entrada del pecado en la humanidad.',
  'Publicado básico'
),
(
  'per-eva',
  'Eva',
  'eva',
  'Primera mujer; junto con Adán aparece en el relato de la caída en Génesis 3.',
  'Publicado básico'
),
(
  'per-serpiente',
  'La serpiente',
  'la-serpiente',
  'Figura que engaña a Eva en Génesis 3 y pone en duda la palabra de Dios.',
  'Publicado básico'
);

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
(
  'glo-pecado',
  'Pecado',
  'pecado',
  'Desobediencia y rebelión contra Dios en pensamiento, deseo, palabra o acción.',
  'Publicado básico'
),
(
  'glo-caida',
  'Caída',
  'caida',
  'Momento en que el pecado entró en la historia humana por la desobediencia de Adán y Eva.',
  'Publicado básico'
);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-caida-y-pecado', 'book-genesis'),
('lec-caida-y-pecado', 'book-romanos');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-caida-y-pecado', 'pas-genesis-3', 'principal', 1),
('lec-caida-y-pecado', 'pas-romanos-3-23', 'apoyo', 2),
('lec-caida-y-pecado', 'pas-romanos-6-23', 'apoyo', 3);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-caida-y-pecado', 'eve-caida');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-caida-y-pecado', 'tem-caida'),
('lec-caida-y-pecado', 'tem-pecado'),
('lec-caida-y-pecado', 'tem-redencion');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-caida-y-pecado', 'per-adan'),
('lec-caida-y-pecado', 'per-eva'),
('lec-caida-y-pecado', 'per-serpiente');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-caida-y-pecado', 'glo-pecado'),
('lec-caida-y-pecado', 'glo-caida');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-caida', 'per-adan'),
('eve-caida', 'per-eva'),
('eve-caida', 'per-serpiente');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-caida', 'tem-caida'),
('eve-caida', 'tem-pecado'),
('eve-caida', 'tem-redencion');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-caida', 'book-genesis');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-caida', 'pas-genesis-3', 'principal', 1),
('eve-caida', 'pas-romanos-3-23', 'apoyo', 2),
('eve-caida', 'pas-romanos-6-23', 'apoyo', 3);