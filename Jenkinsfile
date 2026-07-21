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

        stage('Run') {
            steps {
                sh 'java app'
            }
        }
    }
}
