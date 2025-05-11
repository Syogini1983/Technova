pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Syogini1983/Technova.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run App') {
            steps {
                sh 'python app.py'
            }
        }

        stage('Docker Build & Run') {
            steps {
                sh 'docker build -t technova-app .'
                sh 'docker run -d -p 5000:5000 technova-app'
            }
        }
    }
}

