#!/usr/bin/env bash
# Régénère les images publiées dans site/dist/assets à partir des originaux de site/sources.
# Prérequis : ImageMagick 7 (magick) compilé avec AVIF et WebP.
# Usage, depuis la racine du dépôt : scripts/optimize-images.sh
set -euo pipefail

SRC=site/sources
OUT=site/dist/assets
AVIF_Q=${AVIF_Q:-60}
WEBP_Q=${WEBP_Q:-80}

mkdir -p "$OUT/tilli"

# Encode une image (déjà préparée) en AVIF et en WebP, sans métadonnées.
encode() { # <entrée> <sortie sans extension> [options magick]
  local in=$1 out=$2
  shift 2
  magick "$in" "$@" -strip -quality "$AVIF_Q" "$out.avif"
  magick "$in" "$@" -strip -quality "$WEBP_Q" -define webp:method=6 "$out.webp"
}

# Une variante AVIF + WebP par largeur, jamais agrandie au-delà de l'original.
variants() { # <entrée> <préfixe de sortie> <largeurs...>
  local in=$1 prefix=$2
  shift 2
  for w in "$@"; do
    encode "$in" "$prefix-$w" -resize "${w}x>"
  done
}

# Fond du hero : seul le tiers gauche de la bannière est visible.
encode "$SRC/alphard-banner.png" "$OUT/hero-stars" -crop 683x768+0+0 +repage

# Hydre en filigrane : affichée au plus en 570 px, à 9 % d'opacité.
encode "$SRC/alphard-hydra.png" "$OUT/hydra-600" -resize 600x600

# Logo : PNG sans perte, le filtre SVG logo-alpha supprime son fond clair.
magick "$SRC/alphard-logo.png" -resize 168x168 -strip "$OUT/alphard-logo-168.png"

# Portrait : 350 px affichés, 700 px pour les écrans haute densité, JPEG de repli.
variants "$SRC/benjamin-michel.jpg" "$OUT/portrait" 350 700
magick "$SRC/benjamin-michel.jpg" -resize 700x -strip -quality 82 "$OUT/portrait-700.jpg"

# Visuels Tilli : largeur d'affichage, double densité, et la plus grande sert au lien « ouvrir en grand ».
variants "$SRC/tilli/tilli-site-partenaires.png" "$OUT/tilli/tilli-site-partenaires" 800 1600
variants "$SRC/tilli/tilli-plugin-ecommerce.png" "$OUT/tilli/tilli-plugin-ecommerce" 588
variants "$SRC/tilli/tilli-parcours-colis.png" "$OUT/tilli/tilli-parcours-colis" 600 1134
variants "$SRC/tilli/tilli-appstore-profil.png" "$OUT/tilli/tilli-appstore-profil" 300 600 852
variants "$SRC/tilli/tilli-appstore-agenda.png" "$OUT/tilli/tilli-appstore-agenda" 300 600 852
variants "$SRC/tilli/tilli-appstore-missions.png" "$OUT/tilli/tilli-appstore-missions" 300 600 1290
variants "$SRC/tilli/tilli-flux-paiements.png" "$OUT/tilli/tilli-flux-paiements" 1000 1981

echo "Images régénérées dans $OUT"
