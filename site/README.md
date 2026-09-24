# Portfolio de Benjamin Michel

Site statique en français, sans dépendance de compilation. Les fichiers à modifier sont `dist/index.html` (contenu) et `dist/styles.css` (mise en page). Les polices DM Sans et Instrument Serif sont chargées depuis Google Fonts, avec des polices système de secours.

## Aperçu local

Depuis ce dossier : `python3 -m http.server 4173 --directory dist`, puis ouvrir http://localhost:4173.

## Contenu et sources

Consultés le 23 septembre 2026 :

- https://fr.linkedin.com/in/benjmichel/en : développeur fullstack freelance, React, React Native, Node.js, ex-CTO et cofondateur, Strasbourg, formation Ensimag, recommandation de Laura Petit.
- https://fr.linkedin.com/in/benjmichel : présentation mentionnant neuf ans à construire la technologie de Tilli et une équipe de huit personnes.
- https://github.com/BenjMichel : projets épinglés Shopping List, Survival A-Frame et Gatsby Plugin Nullish Coalescing Operator.
- https://github.com/BenjMichel/survival-aframe : jeu VR en React et A-Frame.

L’accès direct à LinkedIn était limité ; des versions publiques indexées du profil ont été consultées. Leurs intitulés d’entreprise actuels diffèrent, aussi aucune mission actuelle ni date de disponibilité n’a été ajoutée. La localisation LinkedIn plus récente (Strasbourg) a été retenue plutôt que celle de GitHub (Paris). Les projets GitHub sont présentés comme des explorations personnelles, sans résultats commerciaux inventés. Le contact pointe vers LinkedIn ; aucune adresse e-mail n’a été devinée.

Le site public est hébergé sur GitHub Pages : https://benjmichel.github.io/. Aucune mesure d’audience, aucun formulaire et aucun stockage de données personnelles ne sont ajoutés.

## Identité Alphard

Benjamin Michel reste la marque principale. Alphard est présentée comme sa SASU dans le contact et le pied de page. Palette : bleu nuit `#050d20`, ivoire `#f4f2ea`, bleu stellaire `#acc5ff`, ardoise `#a9b5c8`. Illustration décorative (pas une carte astronomique exacte) enregistrée dans `dist/assets/alphard-hydra.png`, créée avec l’outil intégré imagegen.

Brief de génération : hydre céleste à trois têtes, gravure fine cuivre et or pâle sur fond bleu nuit, étoiles reliées par de fins segments, une étoile centrale lumineuse, marges généreuses, sans texte ni interface. Composition inspirée d’un atlas céleste pour le portfolio de Benjamin Michel.

Le portrait et le logo fournis par Benjamin sont copiés sans retouche dans `dist/assets/benjamin-michel.jpg` et `dist/assets/alphard-logo.png`. Le portrait est cadré en cercle par CSS. La partie étoilée gauche de la bannière fournie (`dist/assets/alphard-banner.png`) habille le fond du hero ; son texte n’est pas affiché. L’hydre demeure en filigrane du parcours. Aucune légende visible n’explicite le thème.

### Intégration des fonds

Les images originales sont préservées. Les filtres SVG `logo-alpha` et `hydra-alpha` définis dans la page convertissent leurs fonds respectivement clair et sombre en transparence au rendu ; la couleur du logo reste bleu marine et l’hydre est teintée bleu stellaire. Les essais imagegen ont produit des fonds à damier opaques et ne sont pas utilisés dans le site.

## Publication GitHub Pages

Les sources sont conservées dans le dépôt privé `BenjMichel/portfolio`. Le contenu de `dist/` est publié à la racine du dépôt `BenjMichel/BenjMichel.github.io`, sur sa branche `master`. GitHub Pages déploie cette branche automatiquement après chaque push. Le fichier `.nojekyll` évite une compilation Jekyll inutile.

Pour une mise à jour, reporter les fichiers modifiés de `site/dist/` dans un clone à jour du dépôt public, puis committer et pousser sur `master`. Ne pas synchroniser avec suppression : les autres fichiers historiques du dépôt sont préservés. La configuration `.openai/` correspond à un ancien essai d’hébergement et n’est ni versionnée ni publiée.
