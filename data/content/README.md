# Contenido editorial

Esta carpeta contiene archivos SQL modulares para publicar contenido progresivamente.

Convención sugerida:

- 010-leccion-01-*.sql
- 020-leccion-02-*.sql
- 030-leccion-03-*.sql

Cada archivo puede:

- actualizar una lección existente;
- agregar puntos;
- agregar preguntas;
- conectar libros;
- conectar pasajes;
- conectar eventos;
- conectar temas;
- conectar personajes;
- conectar lugares;
- conectar glosario;
- conectar recursos visuales.

Regla importante:

El contenido base común vive en `data/seed.sql`.
El contenido progresivo de lecciones vive aquí.