DELETE FROM lesson_visual_resources WHERE lesson_id = 'lec-jesus-mesias-prometido';
DELETE FROM lesson_glossary WHERE lesson_id = 'lec-jesus-mesias-prometido';
DELETE FROM lesson_places WHERE lesson_id = 'lec-jesus-mesias-prometido';
DELETE FROM lesson_people WHERE lesson_id = 'lec-jesus-mesias-prometido';
DELETE FROM lesson_topics WHERE lesson_id = 'lec-jesus-mesias-prometido';
DELETE FROM lesson_events WHERE lesson_id = 'lec-jesus-mesias-prometido';
DELETE FROM lesson_passages WHERE lesson_id = 'lec-jesus-mesias-prometido';
DELETE FROM lesson_books WHERE lesson_id = 'lec-jesus-mesias-prometido';
DELETE FROM lesson_questions WHERE lesson_id = 'lec-jesus-mesias-prometido';
DELETE FROM lesson_points WHERE lesson_id = 'lec-jesus-mesias-prometido';
DELETE FROM lesson_bible_refs WHERE lesson_id = 'lec-jesus-mesias-prometido';

DELETE FROM event_passages WHERE event_id = 'eve-jesus-mesias-prometido';
DELETE FROM event_books WHERE event_id = 'eve-jesus-mesias-prometido';
DELETE FROM event_topics WHERE event_id = 'eve-jesus-mesias-prometido';
DELETE FROM event_places WHERE event_id = 'eve-jesus-mesias-prometido';
DELETE FROM event_people WHERE event_id = 'eve-jesus-mesias-prometido';

UPDATE lessons
SET
  title = 'Jesús, el Mesías prometido',
  slug = 'jesus-el-mesias-prometido',
  eyebrow = 'Lección 19 de 20 · 7–10 minutos',
  main_idea = 'Jesús es el Mesías prometido: el Hijo de David, el Hijo de Dios, el Siervo anunciado y el cumplimiento de las promesas de Dios.',
  summary = 'Los evangelios presentan a Jesús como el centro de la historia bíblica: Dios cumple en Él la promesa, el reino, el nuevo pacto y la esperanza de salvación.',
  explanation = 'Después de siglos de promesas, figuras y profecías, el Nuevo Testamento anuncia que Jesús es el Mesías prometido. Su nacimiento muestra que Dios cumple su palabra. Su vida revela el carácter del reino de Dios. Sus señales muestran autoridad sobre enfermedad, pecado, naturaleza y muerte. Su enseñanza llama al arrepentimiento y a la fe. Jesús no aparece como una figura aislada, sino como el cumplimiento de toda la historia anterior: descendencia de Abraham, Hijo de David, verdadero Israel, Siervo del Señor y Dios con nosotros. En Él se reúnen la promesa, el templo, el sacrificio, el reino y la esperanza profética. Reconocer a Jesús como el Mesías es ver que toda la Biblia apunta hacia Él.',
  remember = 'Jesús es el cumplimiento de las promesas de Dios y el centro de toda la historia bíblica.',
  application = 'Esta lección nos llama a leer toda la Biblia mirando a Cristo, confiar en Él como Salvador y seguirlo como Rey.',
  estimated_time = '7–10 minutos',
  status = 'Publicado básico'
WHERE id = 'lec-jesus-mesias-prometido';

INSERT OR IGNORE INTO bible_chapters (id, book_id, chapter_number) VALUES
('chap-mateo-1', 'book-mateo', 1),
('chap-mateo-4', 'book-mateo', 4),
('chap-mateo-16', 'book-mateo', 16),
('chap-lucas-1', 'book-lucas', 1),
('chap-lucas-4', 'book-lucas', 4),
('chap-lucas-24', 'book-lucas', 24),
('chap-juan-1', 'book-juan', 1),
('chap-juan-20', 'book-juan', 20),
('chap-hechos-10', 'book-hechos', 10);

INSERT OR IGNORE INTO passages (
  id, display_reference, slug, book_id, start_chapter, start_verse,
  end_chapter, end_verse, summary, status
) VALUES
('pas-mateo-1-1-17', 'Mateo 1:1-17', 'mateo-1-1-17', 'book-mateo', 1, 1, 1, 17, 'La genealogía presenta a Jesús como hijo de Abraham e hijo de David.', 'Publicado básico'),
('pas-mateo-1-18-25', 'Mateo 1:18-25', 'mateo-1-18-25', 'book-mateo', 1, 18, 1, 25, 'Nacimiento de Jesús, Emanuel, Dios con nosotros.', 'Publicado básico'),
('pas-lucas-1-30-33', 'Lucas 1:30-33', 'lucas-1-30-33', 'book-lucas', 1, 30, 1, 33, 'El anuncio del nacimiento de Jesús lo presenta como heredero del trono de David.', 'Publicado básico'),
('pas-lucas-4-16-21', 'Lucas 4:16-21', 'lucas-4-16-21', 'book-lucas', 4, 16, 4, 21, 'Jesús anuncia que la Escritura se cumple en Él.', 'Publicado básico'),
('pas-mateo-16-13-20', 'Mateo 16:13-20', 'mateo-16-13-20', 'book-mateo', 16, 13, 16, 20, 'Pedro confiesa que Jesús es el Cristo, el Hijo del Dios viviente.', 'Publicado básico'),
('pas-juan-1-1-18', 'Juan 1:1-18', 'juan-1-1-18', 'book-juan', 1, 1, 1, 18, 'El Verbo eterno se hizo carne y habitó entre nosotros.', 'Publicado básico'),
('pas-juan-20-30-31', 'Juan 20:30-31', 'juan-20-30-31', 'book-juan', 20, 30, 20, 31, 'Juan escribe para que creamos que Jesús es el Cristo, el Hijo de Dios.', 'Publicado básico'),
('pas-lucas-24-27', 'Lucas 24:27', 'lucas-24-27', 'book-lucas', 24, 27, 24, 27, 'Jesús explica que las Escrituras hablan de Él.', 'Publicado básico'),
('pas-hechos-10-38-43', 'Hechos 10:38-43', 'hechos-10-38-43', 'book-hechos', 10, 38, 10, 43, 'Los apóstoles anuncian a Jesús como el ungido por Dios, juez y salvador.', 'Publicado básico');

INSERT OR IGNORE INTO topics (id, title, slug, definition, status) VALUES
('tem-mesias', 'Mesías', 'mesias', 'El Ungido prometido por Dios, cumplido en Jesús.', 'Publicado básico'),
('tem-encarnacion', 'Encarnación', 'encarnacion', 'El Hijo eterno de Dios hecho hombre para habitar entre nosotros y salvarnos.', 'Publicado básico'),
('tem-reino-de-dios', 'Reino de Dios', 'reino-de-dios', 'Gobierno salvador de Dios anunciado y manifestado en Jesús.', 'Publicado básico'),
('tem-cumplimiento', 'Cumplimiento', 'cumplimiento', 'Realización de las promesas, figuras y esperanzas bíblicas en Cristo.', 'Publicado básico'),
('tem-evangelio', 'Evangelio', 'evangelio', 'La buena noticia de salvación en Jesús.', 'Publicado básico'),
('tem-fe', 'Fe', 'fe', 'Confianza en Dios y en su palabra, centrada finalmente en Cristo.', 'Publicado básico');

INSERT OR IGNORE INTO people (id, name, slug, summary, status) VALUES
('per-jesus', 'Jesús', 'jesus', 'El Hijo de Dios, Mesías prometido y centro de la historia bíblica.', 'Publicado básico'),
('per-maria', 'María', 'maria', 'Madre de Jesús, escogida por Dios en la historia de la encarnación.', 'Publicado básico'),
('per-jose-esposo-maria', 'José, esposo de María', 'jose-esposo-de-maria', 'Descendiente de David y esposo de María en los relatos del nacimiento de Jesús.', 'Publicado básico'),
('per-juan-bautista', 'Juan el Bautista', 'juan-el-bautista', 'Mensajero que preparó el camino del Señor.', 'Publicado básico'),
('per-pedro', 'Pedro', 'pedro', 'Apóstol que confesó a Jesús como el Cristo, el Hijo del Dios viviente.', 'Publicado básico'),
('per-apostoles', 'Los apóstoles', 'apostoles', 'Testigos enviados para anunciar a Jesús y enseñar a la iglesia.', 'Publicado básico');

INSERT OR IGNORE INTO places (
  id, name, slug, place_type, summary, latitude, longitude, map_zoom,
  geographical_certainty, status
) VALUES
('lug-belen', 'Belén', 'belen', 'Ciudad', 'Ciudad de David y lugar asociado con el nacimiento de Jesús.', 31.7054, 35.2024, 10, 'Alta / aproximada', 'Publicado básico'),
('lug-nazaret', 'Nazaret', 'nazaret', 'Ciudad', 'Lugar donde Jesús creció y fue conocido como Jesús de Nazaret.', 32.6996, 35.3035, 10, 'Alta', 'Publicado básico'),
('lug-galilea', 'Galilea', 'galilea', 'Región', 'Región donde Jesús desarrolló gran parte de su ministerio público.', 32.8000, 35.5000, 8, 'Alta / aproximada', 'Publicado básico'),
('lug-jerusalen', 'Jerusalén', 'jerusalen', 'Ciudad', 'Ciudad central en la historia bíblica, relacionada con el templo, Jesús y la iglesia primitiva.', 31.7780, 35.2354, 10, 'Alta', 'Publicado básico');

INSERT OR IGNORE INTO glossary_terms (id, term, slug, definition, status) VALUES
('glo-mesias', 'Mesías', 'mesias', 'El Ungido prometido por Dios.', 'Publicado básico'),
('glo-cristo', 'Cristo', 'cristo', 'Título griego equivalente a Mesías; significa Ungido.', 'Publicado básico'),
('glo-encarnacion', 'Encarnación', 'encarnacion', 'El Hijo de Dios hecho hombre.', 'Publicado básico'),
('glo-hijo-de-david', 'Hijo de David', 'hijo-de-david', 'Título mesiánico que señala al Rey prometido de la línea de David, cumplido en Jesús.', 'Publicado básico'),
('glo-reino-de-dios', 'Reino de Dios', 'reino-de-dios', 'Gobierno salvador de Dios manifestado en Jesús.', 'Publicado básico');

INSERT OR IGNORE INTO events (
  id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status
) VALUES
(
  'eve-jesus-mesias-prometido',
  'Jesús, el Mesías prometido',
  'jesus-el-mesias-prometido',
  'Cumplimiento mesiánico',
  'Jesús viene como el Mesías prometido, cumplimiento de la promesa, el reino y la esperanza profética.',
  'Los evangelios presentan a Jesús como el centro de la historia bíblica. Él cumple las promesas dadas a Abraham y David, encarna la presencia de Dios, anuncia el reino y revela el camino de salvación.',
  'Nuevo Testamento',
  'Siglo I d.C.',
  19,
  'Alta',
  'Alta',
  1,
  1,
  'Publicado básico'
);

UPDATE events
SET
  title = 'Jesús, el Mesías prometido',
  slug = 'jesus-el-mesias-prometido',
  event_type = 'Cumplimiento mesiánico',
  summary = 'Jesús viene como el Mesías prometido, cumplimiento de la promesa, el reino y la esperanza profética.',
  description = 'Los evangelios presentan a Jesús como el centro de la historia bíblica. Él cumple las promesas dadas a Abraham y David, encarna la presencia de Dios, anuncia el reino y revela el camino de salvación.',
  biblical_period = 'Nuevo Testamento',
  approximate_date = 'Siglo I d.C.',
  chronological_order = 19,
  temporal_certainty = 'Alta',
  geographical_certainty = 'Alta',
  appears_on_timeline = 1,
  appears_on_map = 1,
  status = 'Publicado básico'
WHERE id = 'eve-jesus-mesias-prometido';

INSERT OR IGNORE INTO visual_resources (
  id, title, slug, resource_type, description, alt_text, url, status
) VALUES
(
  'vis-jesus-mesias-prometido',
  'Jesús: cumplimiento de las promesas',
  'jesus-cumplimiento-de-las-promesas',
  'Infografía',
  'Recurso visual para conectar a Jesús con Abraham, David, los profetas, el templo, el reino y el nuevo pacto.',
  'Infografía sobre Jesús como Mesías prometido y cumplimiento de la historia bíblica.',
  NULL,
  'Idea'
);

INSERT INTO lesson_bible_refs (id, lesson_id, reference, note, position) VALUES
('ref-jesus-mateo-1-1-17', 'lec-jesus-mesias-prometido', 'Mateo 1:1-17', 'Jesús es presentado como hijo de Abraham e hijo de David.', 1),
('ref-jesus-mateo-1-18-25', 'lec-jesus-mesias-prometido', 'Mateo 1:18-25', 'Jesús es Emanuel, Dios con nosotros.', 2),
('ref-jesus-lucas-1-30-33', 'lec-jesus-mesias-prometido', 'Lucas 1:30-33', 'Jesús recibe el trono de David.', 3),
('ref-jesus-lucas-4-16-21', 'lec-jesus-mesias-prometido', 'Lucas 4:16-21', 'Jesús anuncia cumplimiento de la Escritura.', 4),
('ref-jesus-mateo-16-13-20', 'lec-jesus-mesias-prometido', 'Mateo 16:13-20', 'Jesús es confesado como el Cristo.', 5),
('ref-jesus-juan-1-1-18', 'lec-jesus-mesias-prometido', 'Juan 1:1-18', 'El Verbo se hizo carne y habitó entre nosotros.', 6),
('ref-jesus-juan-20-30-31', 'lec-jesus-mesias-prometido', 'Juan 20:30-31', 'El evangelio llama a creer que Jesús es el Cristo.', 7),
('ref-jesus-lucas-24-27', 'lec-jesus-mesias-prometido', 'Lucas 24:27', 'Jesús explica que las Escrituras hablan de Él.', 8);

INSERT INTO lesson_points (id, lesson_id, point_text, position) VALUES
('pt-jesus-1', 'lec-jesus-mesias-prometido', 'Jesús cumple la promesa hecha a Abraham de bendición para las naciones.', 1),
('pt-jesus-2', 'lec-jesus-mesias-prometido', 'Jesús cumple la promesa hecha a David como Rey mesiánico.', 2),
('pt-jesus-3', 'lec-jesus-mesias-prometido', 'Jesús revela la presencia de Dios habitando con su pueblo.', 3),
('pt-jesus-4', 'lec-jesus-mesias-prometido', 'Jesús anuncia el reino de Dios y llama al arrepentimiento y la fe.', 4),
('pt-jesus-5', 'lec-jesus-mesias-prometido', 'Toda la historia bíblica encuentra su centro y cumplimiento en Cristo.', 5);

INSERT INTO lesson_questions (id, lesson_id, question_text, position) VALUES
('q-jesus-1', 'lec-jesus-mesias-prometido', '¿Qué promesas del Antiguo Testamento cumple Jesús?', 1),
('q-jesus-2', 'lec-jesus-mesias-prometido', '¿Por qué es importante confesar que Jesús es el Cristo?', 2),
('q-jesus-3', 'lec-jesus-mesias-prometido', '¿Cómo cambia nuestra lectura de la Biblia saber que toda ella apunta a Cristo?', 3);

INSERT INTO lesson_books (lesson_id, book_id) VALUES
('lec-jesus-mesias-prometido', 'book-mateo'),
('lec-jesus-mesias-prometido', 'book-lucas'),
('lec-jesus-mesias-prometido', 'book-juan'),
('lec-jesus-mesias-prometido', 'book-hechos');

INSERT INTO lesson_passages (lesson_id, passage_id, relation_type, position) VALUES
('lec-jesus-mesias-prometido', 'pas-mateo-1-1-17', 'genealogía mesiánica', 1),
('lec-jesus-mesias-prometido', 'pas-mateo-1-18-25', 'encarnación', 2),
('lec-jesus-mesias-prometido', 'pas-lucas-1-30-33', 'hijo de David', 3),
('lec-jesus-mesias-prometido', 'pas-lucas-4-16-21', 'cumplimiento profético', 4),
('lec-jesus-mesias-prometido', 'pas-mateo-16-13-20', 'confesión mesiánica', 5),
('lec-jesus-mesias-prometido', 'pas-juan-1-1-18', 'Verbo encarnado', 6),
('lec-jesus-mesias-prometido', 'pas-juan-20-30-31', 'propósito del evangelio', 7),
('lec-jesus-mesias-prometido', 'pas-lucas-24-27', 'Cristo en las Escrituras', 8);

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-jesus-mesias-prometido', 'eve-jesus-mesias-prometido');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-jesus-mesias-prometido', 'tem-mesias'),
('lec-jesus-mesias-prometido', 'tem-encarnacion'),
('lec-jesus-mesias-prometido', 'tem-reino-de-dios'),
('lec-jesus-mesias-prometido', 'tem-cumplimiento'),
('lec-jesus-mesias-prometido', 'tem-evangelio'),
('lec-jesus-mesias-prometido', 'tem-fe');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-jesus-mesias-prometido', 'per-jesus'),
('lec-jesus-mesias-prometido', 'per-maria'),
('lec-jesus-mesias-prometido', 'per-jose-esposo-maria'),
('lec-jesus-mesias-prometido', 'per-juan-bautista'),
('lec-jesus-mesias-prometido', 'per-pedro'),
('lec-jesus-mesias-prometido', 'per-apostoles');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-jesus-mesias-prometido', 'lug-belen'),
('lec-jesus-mesias-prometido', 'lug-nazaret'),
('lec-jesus-mesias-prometido', 'lug-galilea'),
('lec-jesus-mesias-prometido', 'lug-jerusalen');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-jesus-mesias-prometido', 'glo-mesias'),
('lec-jesus-mesias-prometido', 'glo-cristo'),
('lec-jesus-mesias-prometido', 'glo-encarnacion'),
('lec-jesus-mesias-prometido', 'glo-hijo-de-david'),
('lec-jesus-mesias-prometido', 'glo-reino-de-dios');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-jesus-mesias-prometido', 'vis-jesus-mesias-prometido');

INSERT OR IGNORE INTO event_people (event_id, person_id) VALUES
('eve-jesus-mesias-prometido', 'per-jesus'),
('eve-jesus-mesias-prometido', 'per-maria'),
('eve-jesus-mesias-prometido', 'per-jose-esposo-maria'),
('eve-jesus-mesias-prometido', 'per-juan-bautista'),
('eve-jesus-mesias-prometido', 'per-pedro'),
('eve-jesus-mesias-prometido', 'per-apostoles');

INSERT OR IGNORE INTO event_places (event_id, place_id) VALUES
('eve-jesus-mesias-prometido', 'lug-belen'),
('eve-jesus-mesias-prometido', 'lug-nazaret'),
('eve-jesus-mesias-prometido', 'lug-galilea'),
('eve-jesus-mesias-prometido', 'lug-jerusalen');

INSERT OR IGNORE INTO event_topics (event_id, topic_id) VALUES
('eve-jesus-mesias-prometido', 'tem-mesias'),
('eve-jesus-mesias-prometido', 'tem-encarnacion'),
('eve-jesus-mesias-prometido', 'tem-reino-de-dios'),
('eve-jesus-mesias-prometido', 'tem-cumplimiento'),
('eve-jesus-mesias-prometido', 'tem-evangelio'),
('eve-jesus-mesias-prometido', 'tem-fe');

INSERT OR IGNORE INTO event_books (event_id, book_id) VALUES
('eve-jesus-mesias-prometido', 'book-mateo'),
('eve-jesus-mesias-prometido', 'book-lucas'),
('eve-jesus-mesias-prometido', 'book-juan'),
('eve-jesus-mesias-prometido', 'book-hechos');

INSERT OR IGNORE INTO event_passages (event_id, passage_id, relation_type, position) VALUES
('eve-jesus-mesias-prometido', 'pas-mateo-1-1-17', 'genealogía mesiánica', 1),
('eve-jesus-mesias-prometido', 'pas-lucas-1-30-33', 'hijo de David', 2),
('eve-jesus-mesias-prometido', 'pas-lucas-4-16-21', 'cumplimiento profético', 3),
('eve-jesus-mesias-prometido', 'pas-mateo-16-13-20', 'confesión mesiánica', 4),
('eve-jesus-mesias-prometido', 'pas-juan-1-1-18', 'Verbo encarnado', 5),
('eve-jesus-mesias-prometido', 'pas-lucas-24-27', 'Cristo en las Escrituras', 6);