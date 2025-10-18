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
                echo 'Static website hai — build ki zarurat nahi.'
            }
        }

        stage('Run Website') {
            steps {
                echo 'Starting local web server...'
                bat 'start python -m http.server 8085'
                bat 'start http://localhost:8085'
            }
        }
    }
}
