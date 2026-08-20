#!/bin/bash
# Entpackt alle gzip-komprimierten .pbf-Dateien im tiles/-Ordner in-place.
# Ausführen im Repo-Root (dort wo der tiles/-Ordner liegt).

set -e
TILES_DIR="./tiles"
COUNT=0

find "$TILES_DIR" -name "*.pbf" | while read -r f; do
  # Prüfen ob Datei gzip-magic-bytes hat (1f 8b)
  if [ "$(head -c2 "$f" | od -An -tx1 | tr -d ' ')" = "1f8b" ]; then
    gunzip -c "$f" > "${f}.tmp" && mv "${f}.tmp" "$f"
    COUNT=$((COUNT+1))
  fi
done

echo "Fertig. Entpackte Dateien: $COUNT"
