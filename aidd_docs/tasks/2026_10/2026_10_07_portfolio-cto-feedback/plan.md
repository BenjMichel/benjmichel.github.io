---
objective: "Le portfolio dit en un écran ce que Benjamin vend, prouve ses décisions techniques chez Tilli, se charge vite, et son dépôt public est un échantillon de code présentable."
status: in-progress
---

<!-- Fill or omit these sections; never add, rename, or reorder one. -->

# Plan: Portfolio — corrections issues de la revue « CTO recruteur »

## Overview

| Field      | Value |
| ---------- | ----- |
| **Goal**   | Corriger les freins relevés par la revue critique : offre floue, cas Tilli descriptif, open source daté, dépôt peu présentable, page lourde, absence d'`og:image` et de mentions légales. |
| **Source** | Texte : analyse critique « CTO qui voudrait recruter le freelance » produite dans la conversation du 2026-10-07 (9 freins + 5 actions prioritaires), et arbitrages de Benjamin du même jour : pas de TJM affiché, contact uniquement via LinkedIn, 3 offres de la bio GitHub, Tilli rachetée par Reekom, pas de domaine personnalisé. |

## Phases

| #   | Phase | File |
| --- | ----- | ---- |
| 1   | Dépôt présentable : CSS consolidé, HTML lisible, README réécrits (zéro changement visuel) | [`phase-1.md`](./phase-1.md) |
| 2   | Performance et partage : images AVIF/WebP, polices auto-hébergées, `og:image` | [`phase-2.md`](./phase-2.md) |
| 3   | Offre, contact et crédibilité : section Offre, CTA LinkedIn visible en mobile, Explorations, mentions légales | [`phase-3.md`](./phase-3.md) |
| 4   | Cas Tilli réécrit autour de décisions techniques | [`phase-4.md`](./phase-4.md) |

## Resources

| Source | Verified |
| ------ | -------- |
| https://entreprendre.service-public.gouv.fr/vosdroits/F31228 | Mentions légales obligatoires et « facilement accessibles » : identité, adresse, e-mail, téléphone, RCS, n° TVA, hébergeur (nom, adresse, téléphone) ; sanction jusqu'à 1 an et 75 000 €. Pour une société, s'y ajoutent dénomination, forme, capital et directeur de la publication (LCEN art. 6 III). |
| https://ogp.me/ | `og:image` fait partie des 4 propriétés requises ; si elle est présente, `og:image:alt` doit l'être aussi ; `og:image:width`/`height`/`type` optionnelles. |
| https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/picture | `<picture>` + `<source type="image/avif">` / `image/webp` avec repli sur `<img src>` ; `width`, `height`, `loading`, `alt` restent sur l'`<img>` interne. |

## Decisions

| Decision | Why |
| -------- | --- |
| Le site reste du HTML/CSS statique sans étape de build, publié sur `benjmichel.github.io` sans domaine personnalisé ; les variantes d'images sont produites par un script versionné (`scripts/optimize-images.sh`) lancé à la main, et leur résultat est commité. | Conserve le déploiement GitHub Pages actuel sans dépendance ni compilation, ce que les README promettent. |
| Les images originales quittent `site/dist/` pour `site/sources/` (versionnées, non publiées). | Seules les variantes optimisées sont servies ; les originaux restent disponibles pour régénérer. |
| Polices DM Sans et Instrument Serif auto-hébergées en `woff2`, plus d'appel à Google Fonts. | Supprime une chaîne `@import` bloquante et un transfert d'IP vers Google, cohérent avec l'engagement « aucune donnée personnelle » du site. |
| Aucun fait nouveau n'est inventé : détail des offres, disponibilité, métriques Tilli, rôle des recommandations et mentions légales viennent de Benjamin. Les phases 3 et 4 démarrent par la collecte de ces éléments et sont bloquées sans eux. | Le site actuel tire sa crédibilité de son honnêteté ; un chiffre inventé détruirait l'effet recherché auprès d'un CTO. |
| Mentions légales sur une page dédiée `mentions-legales.html`, liée depuis le pied de page. | Obligation légale pour une SASU sans alourdir la page d'accueil. |
