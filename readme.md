# Image
    docker build -t dock_ffmpeg .
A partir du répertoire où se trouve le dockerfile
# Effacer le conteneur
    docker rm dock_ffmpeg_c  
# Lancer le conteneur
    docker run --name dock_ffmpeg_c -v c:/tmp/videos/conversion:/app/videos dock_ffmpeg
On utilise un volume pour persister les données. Cela va les stocker sous *c:/tmp/videos/conversion*.

Pour que cela marche il faut poser sous ce répertoire un fichier *animation.avi*.

Ce dernier sera converti sous le même répertoire en *output.mp4*.

Pour le lire le lecteur de windows plante. Il faut ouvrir chrome et faire un drag & drop du fichier dans le navigateur.