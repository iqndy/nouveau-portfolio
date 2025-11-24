Injecter la clé API (recommandé)

Le projet utilise une clé API côté client pour des démonstrations. Plutôt que de committer la clé dans le dépôt, la clé est injectée au moment du build à partir de la variable d'environnement `API_KEY`.

1. Exportez votre clé dans le shell (macOS zsh):

```bash
export API_KEY="AIzaSyDcpzNR5Q08aL4fiaQtAaQ8KHPZkp7EFxg"
```

2. Générez `index.html` depuis le template:

```bash
./scripts/inject-key.sh
```

3. (Optionnel) Rendre le script exécutable la première fois:

```bash
chmod +x ./scripts/inject-key.sh
```

Notes de sécurité:
- Ne commitez jamais `index.html` contenant la clé en clair.
- Pour CI/CD (Netlify, Vercel, GitHub Actions), stockez la clé comme secret et injectez-la avant l'étape de build.
- Ajoutez un fichier `.env` contenant la clé à `.gitignore` si vous l'utilisez en local.
