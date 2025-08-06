pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'echo "mvn install"'
                sh 'mvn install'
            }
        }
        stage('Build the docker image') {
            steps {
                sh 'echo "docker build"'
                sh 'docker build -t sharanagoudab/Docker-Project:v1.2 . && docker images'
                sh 'docker images'
            }
        }
        stage('push the docker image') {
            steps {
               sh 'echo "docker push"'
               sh 'docker push haranagoudab/Docker-Project:v1.2'
               sh 'docker rmi haranagoudab/Docker-Project:v1.2'
               sh 'docker images' 
            }
        }
    }
}
