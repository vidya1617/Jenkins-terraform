pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/vidya1617/Jenkins-terraform'
            }
        }

        stage('List Files After Clone') {
            steps {
                sh 'ls -la'
            }
        }
    }
}
