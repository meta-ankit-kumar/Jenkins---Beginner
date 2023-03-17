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
                withCredentials([usernamePassword(credentialsId: 'f6849c6e-5c5b-4e0f-8239-7e7955dc4a90', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'echo ${USERNAME} ${PASSWORD}'
                    sh 'gh-pages -d build -r https://${USERNAME}:${PASSWORD}@github.com/meta-ankit-kumar/Jenkins---Beginner.git'
                }
            }
        }
    }
}
