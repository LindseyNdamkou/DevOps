
# Utilisation de l'image Python officielle
FROM python:3.11-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers locaux dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 8085
EXPOSE 8085

# Commande à exécuter au démarrage
CMD ["python", "helloworld.py"]
