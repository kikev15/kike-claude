# kike-claude

Marketplace privado de Claude Code para el equipo y los socios de Kike. Trae un chief of staff que trabaja sobre tu propio vault de Obsidian y tus propias herramientas.

## Qué incluye

| Plugin | Qué hace |
|---|---|
| `chief-of-staff` | Onboarding, brief diario, preparación y resumen de reuniones, revisión semanal |
| `kike-agents` | Agentes de código: architect, explorer, implementer y verifier |

Skills del chief of staff y cómo pedirlos:

| Skill | Frase de ejemplo |
|---|---|
| `onboarding` | "Configúrame el chief of staff" |
| `brief-diario` | "Dame el to do de hoy" |
| `reunion` | "Prepárame la reunión con X" o "Resume la llamada de hace un rato" |
| `revision-semanal` | "Haz la revisión semanal" |

## Requisitos

1. **Claude Code**, en la app de escritorio de Claude (pestaña Code) o en la terminal.
2. **Obsidian** (gratis, obsidian.md). Es donde viven tus notas. Claude escribe archivos Markdown directo en la carpeta del vault, así que no necesitas ningún plugin de Obsidian. Si no quieres usar Obsidian, una carpeta normal también funciona.
3. **Acceso a este repo.** Pídele a Kike que te invite en GitHub. Luego inicia sesión en tu terminal:
   ```bash
   gh auth login
   ```

## Instalación

```bash
git clone https://github.com/kikev15/kike-claude.git && cd kike-claude && ./install.sh
```

O a mano:

```bash
claude plugin marketplace add kikev15/kike-claude
```
```bash
claude plugin install chief-of-staff@kike-claude
```

Después abre Claude Code y escribe: **"Configúrame el chief of staff"**.

## Conectores

Cada persona conecta sus propias cuentas. Nada se comparte con Kike.
Conéctalos en claude.ai > Settings > Connectors:

- Gmail o Outlook
- Google Calendar
- Granola (notas de reuniones)
- Google Drive
- Claude in Chrome (opcional, para leer webs con tu sesión abierta)

## Plugins recomendados de terceros

`install.sh` te pregunta si quieres instalarlos. Son públicos y vienen de su repo original.

| Plugin | Para qué |
|---|---|
| `small-business` y `operations` (Anthropic) | Finanzas, ventas, operaciones de pyme |
| `agent-skills` (Addy Osmani) | Flujo de desarrollo: spec, plan, build, review |
| `caveman` | Respuestas cortas, menos tokens |
| `ponytail` | Código mínimo, sin sobreingeniería |
| `claude-mem` | Memoria entre sesiones |

## Reglas que vienen por defecto

- Claude redacta, pero nunca envía, agenda, paga ni borra sin tu OK en el chat.
- Nunca copia contraseñas, tokens ni números de cuenta a las notas.
- Si falta un dato, escribe "Por confirmar". No inventa.
- Lo cerrado se archiva, no se borra.

## Actualizar

```bash
claude plugin marketplace update kike-claude
```
