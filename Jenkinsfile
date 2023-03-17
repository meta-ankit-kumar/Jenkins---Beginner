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
        stage('Install gh-pages') {
            steps {
                sh "chmod 777 /home/node/app"
                sh 'npm install gh-pages'
            }
        }
        stage('Deploy') {
            steps {
                withEnv(['GIT_USER=ankit.kumar@metacube.com', 'GIT_TOKEN=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']) {
                sh 'npm run deploy'
                }
            }
        }

    }
}
