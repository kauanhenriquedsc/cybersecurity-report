	#!/usr/bin/env bash
# sqlmap_scan.sh
# Wrapper simples para sqlmap com opções seguras por padrão.
# Uso: ./sqlmap_scan.sh "http://target/page.php?id=1" output_dir
# Requisitos: sqlmap instalado (pip install sqlmap ou pacote do SO)

set -euo pipefail

if [ $# -lt 2 ]; then
  echo "Uso: $0 <URL> <OUTPUT_DIR>"
  exit 1
fi

URL="$1"
OUTDIR="$2"
mkdir -p "$OUTDIR"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOGFILE="${OUTDIR}/sqlmap_${TIMESTAMP}.log"

echo "[*] Executando sqlmap contra: $URL"
echo "[*] Saída em: $LOGFILE"

# Parâmetros de exemplo:
# --batch: não interativo
# --threads: paralelismo interno
# --delay: delay entre requisições para reduzir ruído
# --risk/--level ajustam profundidade dos testes
sqlmap -u "$URL" --batch --dbs --threads=2 --delay=1 --timeout=10 --risk=2 --level=2 2>&1 | tee "$LOGFILE"

echo "[*] Execução finalizada. Verifique: $LOGFILE"
echo "[!] Use este script apenas em alvos autorizados."
