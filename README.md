# Portfolio de Benjamin Michel

Le code de mon portfolio de développeur fullstack freelance : expertise, parcours, cas Tilli et projets.

**[Voir le site](https://benjmichel.github.io/)**

J'ai volontairement choisi du HTML et du CSS statiques : aucune dépendance à installer, aucune étape de compilation, et un site publié tel qu'il est versionné.

## Lancer en local

Avec Python 3, depuis la racine du dépôt :

```sh
python3 -m http.server 4173 --directory site/dist
```

Ouvrir ensuite [localhost:4173](http://localhost:4173).

## Structure

- `site/dist/index.html` : contenu de la page.
- `site/dist/styles.css` : styles, organisés dans l'ordre des sections de la page.
- `site/dist/assets/` : images publiées (identité Alphard, portrait, visuels Tilli).

L'identité visuelle, les choix techniques et la publication sont détaillés dans [site/README.md](site/README.md).
