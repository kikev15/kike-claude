---
name: brief-diario
description: Arma el plan y el to do del día desde el calendario, el correo, las notas de reuniones y la nota de ayer. Lo guarda en Daily Notes y lo resume en el chat. Usar con "dame el to do de hoy", "plan de hoy", "brief", "qué tengo hoy".
---

# Brief diario

Lee primero el `CLAUDE.md` del vault: tiene las reglas, los proyectos y el idioma.

## 1. Juntar fuentes (en paralelo)

- **Agenda de hoy:** calendario conectado. Si no hay, Granola con un rango de fechas de hoy (devuelve las reuniones próximas).
- **Notas de reuniones de ayer:** Granola. Saca acuerdos y tareas con dueño.
- **Correo de las últimas 24 h:** solo lo que pide acción o tiene fecha. Ignora promociones y notificaciones automáticas.
- **Nota de ayer:** `Daily Notes/AAAA-MM-DD.md` del día anterior. Toda tarea sin marcar pasa a "Arrastra".
- **Decisiones abiertas:** `Decisiones/` con `estado: abierta`.

Si una fuente falla, sigue y dilo en una línea al final.

## 2. Analizar

- **Cruces de horario:** marca cada choque entre eventos, incluidos los de familia. No propongas mover bloques de familia.
- **Urgencia:** lo que vence hoy o mañana va primero.
- **Inconsistencias:** si una reunión de ayer usó cifras distintas a `Proyectos/<nombre>/Cifras oficiales.md`, márcalo.
- **No inventar:** si falta una hora o un monto, escribe "Por confirmar".

## 3. Escribir la nota

Crea `Daily Notes/AAAA-MM-DD.md`. Si ya existe, añade; no sobrescribas.

```markdown
---
created: AAAA-MM-DD
tags:
  - daily-notes
  - brief
---
# <Día de la semana> <d> de <mes> de <año>

Fuentes: <lista corta>

## Agenda
- [ ] HH:MM · Evento (choca con X)

## Hoy sí o sí
- [ ] Persona o tema: acción concreta (por qué hoy)

## De ayer
- Acuerdos de reuniones con su dueño

## Arrastra
- [ ] Tareas sin cerrar de días anteriores

## Pendientes que siguen
- [ ] Temas abiertos sin fecha
```

## 4. Responder en el chat

- Primera oración: lo más urgente del día, en lenguaje simple.
- Segunda: cuántos cruces de horario hay.
- Luego la lista, agrupada como la nota. Cada ítem con la acción y el motivo en pocas palabras.
- Al final, bajo "Detalle:", las fuentes y lo que no se pudo leer.
- Di dónde quedó guardada la nota.

Nunca envíes correos ni aceptes invitaciones. Si una tarea pide un mensaje, ofrece redactar el borrador.
