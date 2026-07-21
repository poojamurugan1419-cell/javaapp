pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Compile') {
            steps {
                sh 'javac app.java'
            }
        }

        stage('Run Java') {
            steps {
                sh 'java app'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java-demo .'
            }
        }

        stage('Push Docker Image') {
           steps {
              withCredentials([usernamePassword(
                  credentialsId: 'dockerhub',
                  usernameVariable: 'DOCKER_USER',
                  passwordVariable: 'DOCKER_PASS'
              )]) {
                  sh '''
                  echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                  docker tag java-demo $DOCKER_USER/java-demo:latest
                  docker push $DOCKER_USER/java-demo:latest
                 '''
        }
    }
}
        

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm java-demo'
            }
        }
    }
}
