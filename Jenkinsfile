pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/nikhil1328/GitOps.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init /GitOps'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls /GitOps; terraform plan /GitOps'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
