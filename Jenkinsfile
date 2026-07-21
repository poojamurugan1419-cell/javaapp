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

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm java-demo'
            }
        }
    }
}
