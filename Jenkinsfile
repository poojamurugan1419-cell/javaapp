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
                sh 'javac App.java'
            }
        }

        stage('Run') {
            steps {
                sh 'java App'
            }
        }
    }
}
