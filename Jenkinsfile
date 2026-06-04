pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    echo 'Construction de l\'image Docker...'
                    sh 'docker build -t mon-app-web:v1 .'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo 'Déploiement du conteneur...'
                    sh 'docker rm -f conteneur-app || true'
                    sh 'docker run -d -p 5000:5000 --name conteneur-app mon-app-web:v1'
                }
            }
        }
    }
}
