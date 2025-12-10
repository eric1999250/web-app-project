pipeline {
    agent any

    environment {
        NODE_VERSION = "18"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git branch: 'main', url: 'https://github.com/eric1999250/web-app-project.git'
            }
        }

        stage('Install Node.js') {
            steps {
                // Install Node.js dependencies
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                // Run tests (if you have any)
                sh 'npm test || echo "No tests defined"'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished'
        }
    }
}
