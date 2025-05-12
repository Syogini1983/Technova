pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/Syogini1983/Technova.git'
            }
        }

        stage('Create Virtual Environment & Install Requirements') {
            steps {
                sh '''
                    python3 -m venv venv
                    source venv/bin/activate
                    pip install --upgrade pip
                    pip install -r requirements.txt
                '''
            }
        }

        stage('Run App') {
            steps {
                sh '''
                    source venv/bin/activate
                    nohup python app.py &
                '''
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

