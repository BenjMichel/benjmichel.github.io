# Site

Site statique en français. Tout ce qui est publié se trouve dans `dist/` : `index.html` pour le contenu, `styles.css` pour la mise en page, `assets/` pour les images.

## Aperçu local

Depuis ce dossier :

```sh
python3 -m http.server 4173 --directory dist
```

Puis ouvrir http://localhost:4173.

## Styles

`styles.css` suit l'ordre de la page : base, header, hero, expertise, parcours, cas Tilli, projets, recommandation, contact, footer. Les adaptations responsive sont regroupées à la fin par point de rupture (1500, 1000 et 700 px), suivies de `prefers-reduced-motion`.

Les couleurs sont des variables déclarées dans `:root`. Les polices DM Sans (variable) et Instrument Serif sont hébergées dans `dist/assets/fonts/` (sous-ensemble latin en `woff2`, licence OFL) : le site n'appelle aucun service tiers. DM Sans est préchargée depuis `index.html`.

## Identité Alphard

Je publie sous mon nom ; Alphard, ma SASU, apparaît dans le contact et le pied de page.

- Palette : bleu nuit `#050d20`, ivoire `#f4f2ea`, bleu stellaire `#acc5ff`, ardoise `#a9b5c8`.
- La partie étoilée gauche de la bannière Alphard (`assets/hero-stars`) habille le fond du hero.
- L'hydre céleste (`assets/hydra-600`) est une illustration décorative en filigrane de la section Parcours, pas une carte astronomique exacte.
- Le portrait est cadré en cercle par CSS.

Deux filtres SVG déclarés en tête de `index.html` adaptent leur fond au rendu : `logo-alpha` rend transparent le fond clair du logo, `hydra-alpha` rend transparent le fond sombre de l'hydre et la teinte en bleu stellaire.

## Cas Tilli

La section « Expérience professionnelle » présente Tilli, que j'ai cofondée et dont j'ai été CTO. Ses visuels sont dans `assets/tilli/`, chacun lié à sa plus grande variante :

- le schéma d'architecture, synthèse du deck de passation de novembre 2025 ;
- les maquettes web et la capture du site partenaires ;
- trois visuels App Store de l'application artisans, données personnelles masquées ;
- le schéma des flux de paiement, dans un volet repliable.

## Images

Les originaux sont versionnés dans `sources/` et ne sont pas publiés. `scripts/optimize-images.sh` (ImageMagick 7 avec AVIF et WebP) en produit les variantes publiées dans `dist/assets/` :

```sh
scripts/optimize-images.sh   # depuis la racine du dépôt
```

- chaque image existe en AVIF et en WebP, à sa largeur d'affichage et en double densité ; la page les sert via `<picture>`, `srcset` et `image-set()` ;
- le portrait garde un JPEG de repli, le logo reste un PNG sans perte à cause du filtre `logo-alpha` ;
- les métadonnées (EXIF) sont supprimées.

Pour changer une image : remplacer l'original dans `sources/`, relancer le script, commiter le résultat. Une nouvelle image s'ajoute dans le script.

## Image de partage

`dist/assets/og-image.jpg` (1200×630) est l'aperçu affiché quand le lien est partagé sur LinkedIn, Slack ou ailleurs. Elle est rendue depuis `sources/og-card.html` avec Chrome en mode headless ; la commande est en tête de ce fichier.

## Publication

Le site est publié sur GitHub Pages depuis le dépôt `BenjMichel/benjmichel.github.io`. Le workflow `.github/workflows/pages.yml` publie le contenu de `site/dist/` sur https://benjmichel.github.io/ à chaque push sur `main` ; il peut aussi être relancé à la main depuis l'onglet Actions.

Le site ne contient ni mesure d'audience, ni formulaire, ni stockage de données personnelles.
