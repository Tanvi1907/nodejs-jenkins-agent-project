pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t node-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f node-container || true
                docker run -d --name node-container -p 3000:3000 node-app
                '''
            }
        }
    }
}
