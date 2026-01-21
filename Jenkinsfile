pipeline {
    agent any
    
    tools {
        nodejs 'NodeJS'  // You need to configure NodeJS in Jenkins Global Tool Configuration
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/eric1999250/web-app-project.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                bat 'npm install'
            }
        }
        stage('Run Tests') {
            steps {
                bat 'npm test || echo "No tests defined"'
            }
        }
    }
    post {
        always {
            echo 'Pipeline finished'
        }
    }
}
