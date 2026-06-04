[200~services:
volumes:
services:
networks:
volumes:
mkdir ~/mon-projet
cd ~/mon-projet
mkdir monitoring
nano docker-compose.yml
nano monitoring/prometheus.yml
docker compose up -d
# Mettre à jour la liste des paquets
sudo apt update
# Installer Docker
sudo apt install -y docker.io
# Installer Docker Compose (plugin nécessaire pour la commande "docker compose")
sudo apt install -y docker-compose-plugin
# Activer Docker au démarrage et le lancer
sudo systemctl enable --now docker
# Ajouter votre utilisateur au groupe docker pour ne pas avoir à taper "sudo" à chaque fois
sudo usermod -aG docker $USER
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-linux-$(uname -m)" -o /usr/local/bin/docker-compose
sudo apt update
sudo apt install -y curl
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-linux-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
docker-compose up -d
sudo docker-compose up -d
sudo docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
# 1. Initialiser le dépôt local
git init
# 2. Lier votre dossier local au dépôt GitHub que vous venez de créer
git remote add origin https://github.com/abouba0807/mon-app.git
# 3. Ajouter tous les fichiers du dossier
git add .
# 4. Enregistrer le changement
git commit -m "Ajout des fichiers du projet DevOps"
# 5. Envoyer le code vers GitHub
git branch -M main
git push -u origin main
git config --global user.email "votre-email@exemple.com"
git config --global user.name "Abouba0807"
# Ajouter les fichiers
git add .
# Enregistrer les changements
git commit -m "Ajout des fichiers du projet DevOps"
# Pousser vers GitHub (en précisant la branche main)
git branch -M main
git push -u origin main
# S'assurer que vous êtes bien sur la branche main localement
git branch -M main
# Envoyer vos fichiers vers GitHub (forcez l'envoi)
git push -u origin main
git config --global credential.helper store
git push -u origin main
git config --global --unset credential.helper
git config --system --unset credential.helper
git remote set-url origin https://abouba0807:ghp_hqUMaXeLbUNSLBFcUpItS69lx0zuCd1iPcjI@github.com/abouba0807/mon-app.git
git push -u origin main
docker build -t mon-app .
docker run -d -p 80:80 --name conteneur-app mon-app
mv dockerfile Dockerfile
cat <<EOF > Dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EOF

cat <<EOF > index.html
<html>
<body>
  <h1>Bienvenue sur mon application DevOps</h1>
  <p>Compteur de visites : 1</p>
</body>
</html>
EOF

sudo usermod -aG docker $USER
cd ~/mon-projet
docker build -t mon-app .
sudo docker build -t mon-app .
echo ".git" > .dockerignore
sudo docker run -d -p 80:80 --name conteneur-app mon-app
sudo docker ps
<VirtualHost *:80>
</VirtualHost>
sudo nano /etc/apache2/sites-available/app.abou.conf
sudo a2ensite app.abou.conf
sudo /usr/sbin/a2ensite app.abou.conf
sudo apt update
sudo apt install apache2
ls /usr/sbin/a2ensite
[200~sudo a2enmod proxy
+sudo a2ensite app.abou.conf
sudo systemctl restart apache2
cat /etc/apache2/sites-available/app.abou.conf
sudo nano /etc/apache2/sites-available/app.abou.conf
sudo a2ensite app.abou.conf
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo systemctl restart apache2
sudo a2dissite 000-default.conf
sudo apache2ctl configtest
sudo systemctl restart apache2
sudo nano /etc/apache2/apache2.conf
sudo nano /etc/apache2/sites-available/app.abou.conf
sudo systemctl restart apache2
sudo journalctl -xeu apache2.service
sudo a2dissite app.abou.conf
sudo systemctl restart apache2
sudo ss -tulpn | grep :80
sudo apache2ctl configtest
docker ps
docker stop <ID_OU_NOM_DU_CONTENEUR>
# Lister les conteneurs avec sudo
sudo docker ps
# Arrêter les conteneurs (utilisez les ID trouvés juste au-dessus)
sudo docker stop <ID_DU_CONTENEUR>
sudo systemctl restart apache2
sudo systemctl status apache2
sudo docker stop conteneur-app
sudo docker stop jenkins
sudo systemctl restart apache2
sudo systemctl status apache2
sudo a2ensite app.abou.conf
sudo systemctl reload apache2
ip addr show
sudo nano /etc/apache2/sites-available/app.abou.conf
sudo systemctl status apache2
sudo docker ps
sudo docker run -d --name conteneur-app -p 8080:80 mon-app
curl -I http://127.0.0.1:8080/
etc/apache2/sites-available/app.abou.conf
# Supprimer le conteneur bloquant
sudo docker rm conteneur-app
# Relancer le conteneur
sudo docker run -d --name conteneur-app -p 8080:80 mon-app
curl -I http://127.0.0.1:8080/
sudo systemctl reload apache2
sudo nano /etc/hosts
# Jenkins
sudo docker run -d --name jenkins -p 8080:8080 -v /home/abou/jenkins_data:/var/jenkins_home jenkins/jenkins:lts
# Prometheus
sudo docker run -d --name prometheus -p 9090:9090 -v /home/abou/prom_data:/prometheus prom/prometheus
# Grafana
sudo docker run -d --name grafana -p 3000:3000 -v /home/abou/grafana_data:/var/lib/grafana grafana/grafana
sudo docker rm -f jenkins prometheus grafana
# Jenkins
sudo docker run -d --name jenkins -p 8080:8080 -v /home/abou/jenkins_data:/var/jenkins_home jenkins/jenkins:lts
# Prometheus
sudo docker run -d --name prometheus -p 9090:9090 -v /home/abou/prom_data:/prometheus prom/prometheus
# Grafana
sudo docker run -d --name grafana -p 3000:3000 -v /home/abou/grafana_data:/var/lib/grafana grafana/grafana
sudo docker ps
# Jenkins (Port 8081)
sudo docker run -d --name jenkins -p 8081:8080 -v /home/abou/jenkins_data:/var/jenkins_home jenkins/jenkins:lts
# Prometheus (Port 9091)
sudo docker run -d --name prometheus -p 9091:9090 -v /home/abou/prom_data:/prometheus prom/prometheus
# Grafana (Port 3001)
sudo docker run -d --name grafana -p 3001:3000 -v /home/abou/grafana_data:/var/lib/grafana grafana/grafana
sudo docker rm -f jenkins prometheus grafana
# Jenkins sur 8081
sudo docker run -d --name jenkins -p 8081:8080 -v /home/abou/jenkins_data:/var/jenkins_home jenkins/jenkins:lts
# Prometheus sur 9091
sudo docker run -d --name prometheus -p 9091:9090 -v /home/abou/prom_data:/prometheus prom/prometheus
# Grafana sur 3001
sudo docker run -d --name grafana -p 3001:3000 -v /home/abou/grafana_data:/var/lib/grafana grafana/grafana
sudo docker ps
# Vérifier pourquoi Jenkins s'est arrêté
sudo docker logs jenkins
# Vérifier pourquoi Prometheus s'est arrêté
sudo docker logs prometheus
# Vérifier pourquoi Grafana s'est arrêté
sudo docker logs grafana
# Pour Jenkins
sudo chown -R 1000:1000 /home/abou/jenkins_data
# Pour Prometheus
sudo chown -R 65534:65534 /home/abou/prom_data
# Pour Grafana
sudo chown -R 472:472 /home/abou/grafana_data
# Suppression des conteneurs bloqués
sudo docker rm -f jenkins prometheus grafana
# Relance de Jenkins
sudo docker run -d --name jenkins -p 8081:8080 -v /home/abou/jenkins_data:/var/jenkins_home jenkins/jenkins:lts
# Relance de Prometheus
sudo docker run -d --name prometheus -p 9091:9090 -v /home/abou/prom_data:/prometheus prom/prometheus
# Relance de Grafana
sudo docker run -d --name grafana -p 3001:3000 -v /home/abou/grafana_data:/var/lib/grafana grafana/grafana
# Suppression des conteneurs bloqués
sudo docker rm -f jenkins prometheus grafana
# Relance de Jenkins
sudo docker run -d --name jenkins -p 8081:8080 -v /home/abou/jenkins_data:/var/jenkins_home jenkins/jenkins:lts
# Relance de Prometheus
sudo docker run -d --name prometheus -p 9091:9090 -v /home/abou/prom_data:/prometheus prom/prometheus
# Relance de Grafana
sudo docker run -d --name grafana -p 3001:3000 -v /home/abou/grafana_data:/var/lib/grafana grafana/grafana++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
sudo docker ps
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo systemctl restart apache2
192.168.160.129    app.abou
192.168.160.129    jenkins.abou
192.168.160.129    prom.abou
192.168.160.129    grafana.abou
<VirtualHost *:80>
</VirtualHost>
sudo docker rm -f $(sudo docker ps -aq)
sudo rm -rf /home/abou/jenkins_data
sudo rm -rf /home/abou/prom_data
sudo rm -rf /home/abou/grafana_data
# Désactiver tous les sites
sudo a2dissite *
# Supprimer les fichiers de configuration manuels
sudo rm /etc/apache2/sites-available/*.conf
# Recharger Apache pour appliquer
sudo systemctl reload apache2
rm -rf ~/mon-projet
rm -rf ~/mon-projet-github
