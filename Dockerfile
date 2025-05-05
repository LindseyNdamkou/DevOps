# Utilisation de l'image Python officielle
FROM python:3.11-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers locaux dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port utilisé par l'application
EXPOSE 8080  

# Commande à exécuter au démarrage de l'application
CMD ["python", "helloworld.py"]
