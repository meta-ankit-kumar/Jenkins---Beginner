pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '/usr/local/bin/npm install'
                sh '/usr/local/bin/npm run build'
            }
        }
        stage('Test') {
            steps {
                sh '/usr/local/bin/npm test'
            }
        }
        stage('Deploy') {
            steps {
                sh '/usr/local/bin/npm run deploy'
            }
        }
    }
}
