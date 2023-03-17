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
            withCredentials([string(credentialsId: 'efedeaa6-be24-4b19-963c-5d4c5cd21108', variable: 'GITHUB_TOKEN')]) {
                sh "GIT_USER=${GITHUB_TOKEN} npm run deploy"
                }
            }
        }
    }
}
