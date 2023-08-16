# Utilisation de l'image officielle d'Ubuntu
FROM ubuntu:latest

# Mise à jour des paquets et installation des paquets nécessaires
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    ffmpeg

# Définition du répertoire de travail
WORKDIR /app

RUN mkdir videos

# Copie des fichiers de l'application dans le conteneur
# COPY *.avi /app/videos/

# Exécution de la commande par défaut lors du démarrage du conteneur
#CMD ["ffmpeg", "-version"]

# Pour vérifier les données dans le conteneur (cad pour qu'il n'arrête pas de s'executer)
#CMD ["tail", "-f", "/dev/null"]

CMD ["ffmpeg", "-y", "-i", "/app/videos/animation.avi", "-c:v", "libx264", "-preset", "slow", "-crf", "19", "-c:a", "libvo_aacenc", "-b:a", "128k", "/app/videos/output.mp4"]