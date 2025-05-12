pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/Syogini1983/Technova.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t simple-python-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    docker rm -f simple-container || true
                    docker run --name simple-container simple-python-app
                '''
            }
        }
    }
}
