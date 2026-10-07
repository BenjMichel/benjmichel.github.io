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

Les couleurs sont des variables déclarées dans `:root`. Les polices DM Sans et Instrument Serif sont chargées depuis Google Fonts, avec des polices système de secours.

## Identité Alphard

Je publie sous mon nom ; Alphard, ma SASU, apparaît dans le contact et le pied de page.

- Palette : bleu nuit `#050d20`, ivoire `#f4f2ea`, bleu stellaire `#acc5ff`, ardoise `#a9b5c8`.
- La partie étoilée gauche de la bannière Alphard (`assets/alphard-banner.png`) habille le fond du hero.
- L'hydre céleste (`assets/alphard-hydra.png`) est une illustration décorative en filigrane de la section Parcours, pas une carte astronomique exacte.
- Le portrait est cadré en cercle par CSS.

Les images sont publiées telles quelles. Deux filtres SVG déclarés en tête de `index.html` adaptent leur fond au rendu : `logo-alpha` rend transparent le fond clair du logo, `hydra-alpha` rend transparent le fond sombre de l'hydre et la teinte en bleu stellaire.

## Cas Tilli

La section « Expérience professionnelle » présente Tilli, que j'ai cofondée et dont j'ai été CTO. Ses visuels sont dans `assets/tilli/`, chacun lié à sa version en grand :

- le schéma d'architecture, synthèse du deck de passation de novembre 2025 ;
- les maquettes web et la capture du site partenaires ;
- trois visuels App Store de l'application artisans, données personnelles masquées ;
- le schéma des flux de paiement, dans un volet repliable.

## Publication

Le site est publié sur GitHub Pages depuis le dépôt `BenjMichel/benjmichel.github.io`. Le workflow `.github/workflows/pages.yml` publie le contenu de `site/dist/` sur https://benjmichel.github.io/ à chaque push sur `main` ; il peut aussi être relancé à la main depuis l'onglet Actions.

Le site ne contient ni mesure d'audience, ni formulaire, ni stockage de données personnelles.
