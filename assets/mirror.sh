#!/usr/bin/env bash
# Mirrors the brand assets the press kit uses from m4tias.com into this folder,
# then rewrites index.html to use the local copies. Run from the repo root on a
# machine with normal internet access:  bash assets/mirror.sh
set -euo pipefail
cd "$(dirname "$0")"
files=(me8d55269.png mecc064c1.png m73006947.jpg m0fc67b27.jpg mf4d12925.jpg mff832aa4.jpg m4fe51777.jpg m2c4eefd4.jpg mcd0099d0.jpg mb6d194d8.jpg m3a5cecd3.jpg m7c0d6c5a.jpg m84d9d8de.mp4)
for f in "${files[@]}"; do
  curl -fsSL -A "Mozilla/5.0" "https://m4tias.com/$f" -o "$f" && echo "ok  $f"
done
sed -i.bak 's#https://m4tias.com/#assets/#g' ../index.html && rm -f ../index.html.bak
echo "index.html now points at assets/. Commit both."
