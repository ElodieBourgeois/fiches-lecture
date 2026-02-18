# Template - Site académique Quarto (maîtrise/doctorat en kinésiologie)

Template prêt à utiliser pour créer un site personnel d'étudiante/étudiant chercheur et le déployer sur Posit Connect Cloud.

## Ce que contient le template

- `index.qmd` : page d'accueil
- `about.qmd` : profil académique
- `research/` : projets et travaux de recherche
- `teaching/` : expériences d'enseignement
- `talks/` : conférences/communications
- `reading/` : fiches de lecture et notes d'articles
- `templates/` : gabarits `.qmd` à copier

## Principe important: ajout automatique des pages

Les pages `research/index.qmd`, `teaching/index.qmd`, `talks/index.qmd` et `reading/index.qmd` utilisent des **listings**.

Si vous ajoutez un fichier `.qmd` dans les dossiers ci-dessous, il apparaîtra automatiquement dans la section correspondante:

- `research/projects/`
- `teaching/experiences/`
- `talks/events/`
- `reading/notes/`

## Démarrage rapide

1. Créez un repo GitHub à partir de ce template.
2. Clonez le repo localement.
3. Ouvrez le projet dans RStudio.
4. Modifiez `index.qmd` et `about.qmd` avec vos infos.
5. Lancez `quarto preview` pour voir le site.

## Ajouter un nouvel élément

Exemple (nouveau projet de recherche):

1. Copiez `templates/research-template.qmd`.
2. Placez la copie dans `research/projects/`.
3. Renommez le fichier (ex: `2026-03-10-mon-projet.qmd`).
4. Éditez le contenu.

Même logique pour:

- `templates/teaching-template.qmd` -> `teaching/experiences/`
- `templates/talk-template.qmd` -> `talks/events/`
- `templates/reading-note-template.qmd` -> `reading/notes/`

## Déploiement sur Posit Connect Cloud

1. Poussez votre repo sur GitHub.
2. Connectez-vous à Posit Connect Cloud.
3. Créez un nouveau contenu à partir de GitHub.
4. Sélectionnez ce repo et la branche principale.
5. Déployez.

À chaque `git push`, vous pouvez relancer un redéploiement dans Connect Cloud.

## Commandes utiles

```bash
quarto preview   # aperçu local
quarto render    # rendu complet
```
