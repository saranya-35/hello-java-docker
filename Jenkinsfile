pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/yourusername/yourrepo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("yourusername/hello-world-java")
                }
            }
        }

        stage('Run Docker Image') {
            steps {
                script {
                    dockerImage.run()
                }
            }
        }
    }
}
        
