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
                sh 'docker build -t sharanagoudab/spring-petclinic-2.7.0-SNAPSHOT . && docker images'
                sh 'docker images'
            }
        }
        stage('push the docker image') {
            steps {
               sh 'echo "docker push"'
               sh 'docker push sharanagoudab/spring-petclinic-2.7.0-SNAPSHOT'
               //sh 'docker rmi haranagoudab/spring-petclinic-2.7.0-SNAPSHOT'
               sh 'docker images' 
            }
        }
    }
}
