#!/usr/bin/env bash
# Instala el marketplace kike-claude y, opcionalmente, los plugins de terceros recomendados.
set -euo pipefail

command -v claude >/dev/null || { echo "Falta Claude Code. Instálalo primero: https://claude.com/claude-code"; exit 1; }

echo "Agregando el marketplace kike-claude..."
claude plugin marketplace add kikev15/kike-claude
claude plugin install chief-of-staff@kike-claude

read -r -p "¿Instalar también los agentes de código (kike-agents)? [s/N] " a
[[ "$a" =~ ^[sS]$ ]] && claude plugin install kike-agents@kike-claude

read -r -p "¿Instalar los plugins de terceros recomendados? [s/N] " t
if [[ "$t" =~ ^[sS]$ ]]; then
  claude plugin marketplace add anthropics/knowledge-work-plugins
  claude plugin install small-business@knowledge-work-plugins
  claude plugin install operations@knowledge-work-plugins
  claude plugin marketplace add addyosmani/agent-skills
  claude plugin install agent-skills@addy-agent-skills
  claude plugin marketplace add JuliusBrussee/caveman
  claude plugin install caveman@caveman
  claude plugin marketplace add DietrichGebert/ponytail
  claude plugin install ponytail@ponytail
  claude plugin marketplace add thedotmack/claude-mem
  claude plugin install claude-mem@thedotmack
fi

echo
echo "Listo. Abre Claude Code y escribe: Configúrame el chief of staff"
