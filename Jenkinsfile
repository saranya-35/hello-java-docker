pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/saranya-35/hello-java-docker'
            }
        }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image using the Dockerfile in repo
                    dockerImage = docker.build("saranya-35/hello-world-java")
                }
            }
        }

        stage('Run Docker Image') {
            steps {
                script {
                    // Run the container
                    dockerImage.run()
                }
            }
        }
    }
}

        
