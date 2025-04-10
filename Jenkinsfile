pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'master1', url: 'https://github.com/vidya1617/Jenkins-terraform'
            }
        }

        stage('List Files After Clone') {
            steps {
                sh 'ls -la'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}
