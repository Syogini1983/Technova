pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/Syogini1983/Technova.git'
            }
        }

        stage('Docker Build & Run') {
            steps {
                sh '''
                    docker build -t technova-app .
                    docker rm -f technova-container || true
                    docker run -d -p 5000:5000 --name technova-container technova-app
                '''
            }
        }
    }
}
