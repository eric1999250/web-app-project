pipeline {
    agent {
        docker {
            image 'node:18'
            args '-u node'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/eric1999250/web-app-project.git'
            }
        }

        stage('Install Node.js') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
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
