pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/bulbulsharma102001-sudo/static-website.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Static website — build not required.'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("static-website:latest")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("static-website:latest").run("-d -p 8085:80")
                    echo 'Docker container running at http://localhost:8085'
                }
            }
        }
    }
}
