pipeline {
    agent {
        docker {
            image 'my-docker-image:latest'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install --cache=".YourCustomCacheDirectoryName"'
            }
        }
        stage('Deploy') {
            steps {
                sh 'npm run deploy                       '
            }
        }
    }
}
