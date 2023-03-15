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
                sh 'git remote add origin https://github.com/meta-ankit-kumar/Jenkins---Beginner.git'
                sh 'npm run deploy                       '
            }
        }
    }
}
