pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/saranya-35/hello-java-docker.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build("saranya-35/hello-world-java")
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
        
