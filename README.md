# Achim Wahlbezirke – fertige Webstruktur

Aus `OUTPUT.mbtiles` erzeugt.

- Vektorformat: MVT/PBF
- Zoomstufen: 8–18
- Extrahierte Tiles: 3185
- Vektor-Layer: 34
- Bounds: 8.91611,52.9803,9.14296,53.0566

## 1. Lokal testen

Im Projektordner:

```bash
python3 -m http.server 8000
```

Dann:

http://localhost:8000/

## 2. Auf GitHub Pages veröffentlichen

Den Inhalt dieses Ordners in ein GitHub-Repository hochladen.
Danach unter Settings → Pages → Deploy from branch aktivieren.

## 3. In WordPress einbinden

Nach der Veröffentlichung die GitHub-Pages-Adresse als iframe einbinden:

```html
<iframe
  src="https://DEIN-USERNAME.github.io/DEIN-REPOSITORY/"
  style="width:100%;height:700px;border:0;border-radius:12px;"
  loading="lazy"
  allow="fullscreen"
  title="Interaktive Wahlbezirkskarte Achim">
</iframe>
```

## Hinweis

Die MBTiles-Datei wurde in einzelne XYZ-PBF-Kacheln umgewandelt. Die TMS/XYZ-Y-Achse wurde beim Export korrekt umgedreht.

Die Karte verwendet MapLibre GL JS. Die Wahlbezirke sind einzeln ein-/ausblendbar und Vektorobjekte können angeklickt werden.
