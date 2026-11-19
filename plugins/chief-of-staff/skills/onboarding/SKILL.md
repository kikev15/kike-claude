---
name: onboarding
description: Configura el chief of staff para una persona nueva. Revisa sus conectores, la entrevista, crea su vault con reglas y plantillas, corre un primer brief y ofrece programar rutinas. Usar cuando alguien dice "configúrame", "onboarding", "empecemos" o instala este plugin por primera vez.
---

# Onboarding del chief of staff

Objetivo: en 20 minutos la persona tiene su vault, sus reglas y su primer brief del día.

Reglas durante todo el onboarding:
- Nunca enviar, agendar ni borrar nada. Solo crear archivos en el vault y borradores.
- Nunca pedir contraseñas, tokens ni números de cuenta. Si la persona los escribe, no copiarlos.
- No inventar. Lo que falte queda como "Por confirmar".

## Paso 1. Conectores

Revisa qué herramientas tiene disponibles esta sesión y muestra una tabla corta:

| Fuente | Para qué | Estado |
|---|---|---|
| Correo (Gmail u Outlook) | Pendientes y respuestas | conectado / falta |
| Calendario (Google Calendar u Outlook) | Agenda del día | |
| Granola | Notas y transcripciones de reuniones | |
| Google Drive | Documentos y modelos | |
| Obsidian (MCP) o acceso a la carpeta del vault | Escribir notas | |
| Claude in Chrome | Leer webs con sesión abierta (opcional) | |

Para lo que falta: indicar que se conecta en claude.ai > Settings > Connectors, o con `/mcp` en Claude Code. No bloquees el onboarding por un conector faltante; sigue con lo que hay.

## Paso 2. Entrevista (una sola ronda)

Pregunta todo junto, en una lista numerada, y acepta respuestas desordenadas:

1. Nombre y cómo prefiere que le digan.
2. Rol y empresas o proyectos activos (uno por línea).
3. Personas clave: 5 a 10, con su rol y empresa.
4. Prioridades de los próximos 90 días (máximo 3).
5. Idioma: con quién escribe en español y con quién en inglés.
6. Hora del brief diario (ej. 6:00 a. m.).
7. Lo que más le quita tiempo hoy.
8. Reglas extra: cosas que Claude nunca debe hacer o decir.
9. Ruta de su vault de Obsidian. Si no tiene, proponer `~/Documents/Segundo Cerebro/`.

## Paso 3. Crear el vault

Las plantillas están en `templates/` dentro de la carpeta de este skill.

1. Crea las carpetas: `Inbox/`, `Daily Notes/`, `Proyectos/<cada proyecto>/`, `Personas/`, `Decisiones/`, `Reuniones/`, `Revisiones/`, `Personal/`, `Resources/Plantillas/`, `Archivo/`.
2. Copia `Persona.md`, `Decisión.md` y `Revisión semanal.md` a `Resources/Plantillas/`.
3. Escribe `CLAUDE.md` en la raíz del vault desde `templates/CLAUDE.md`. Reemplaza cada `{{...}}` con las respuestas. Si el vault ya tiene un `CLAUDE.md`, muévelo a `Archivo/` antes y avisa.
4. Escribe `Personal/Prioridades 90 días.md` con las prioridades.
5. Crea una nota en `Personas/` por cada persona clave, con la plantilla.
6. Crea `Proyectos/<nombre>/Cifras oficiales.md` vacío para cada proyecto, con la línea "Por confirmar: cifras que se comparten con terceros".

Si hay correo conectado, ofrece completar `email` y `ultimo-contacto` de las Personas buscando en los últimos 30 días. Hazlo solo con un sí.

## Paso 4. Primer brief

Corre el skill `brief-diario` para hoy. Es la prueba de valor: la persona debe ver su agenda y su to-do reales en menos de 2 minutos.

## Paso 5. Rutinas (opcional, con OK)

Ofrece hasta 3 rutinas programadas. Créalas solo con un sí explícito, una por una:
- Brief diario a la hora elegida.
- Revisión semanal (lunes o viernes).
- Seguimiento de pendientes e Inbox.

Explica que las rutinas locales corren solo con la computadora despierta y la app de Claude abierta.

## Cierre

Resume en 5 líneas: qué se creó, dónde, qué conector falta y cómo pedir cosas. Recomienda abrir Claude Code dentro de la carpeta del vault, para que `CLAUDE.md` se cargue siempre.

Frases útiles para la persona:
- "Dame el to do de hoy"
- "Prepárame la reunión con X"
- "Resume la llamada de hace un rato"
- "Haz la revisión semanal"
- "Organiza el Inbox"
