pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/your-org/your-repo.git'
            }
        }

        stage('Build') {
            steps {
                script {
		    dockerIMage = docker.build("your-org/hello-world-java")
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
        
        stage('Deploy Staging') {
            steps {
                sh 'echo "Deploying to Staging Environment..."'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
        failure {
            echo "Pipeline FAILED. Check console output."
        }
    }
}
