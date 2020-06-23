pipeline {
    agent any
     
    stages {
      stage('checkout') {
          steps {
                git url: 'https://github.com/nikhil1328/GitOps/'
             
          }
        }

  stage('Set Terraform path') {
            steps {
                script {
                    def tfHome = tool name: 'Terraform'
                    env.PATH = "${tfHome}:${env.PATH}"
                }
                sh 'terraform --version'
               
               
            }
        }
        
         stage('Provision infrastructure') {
             
            steps {
                sh 'terraform init'
                sh 'terraform plan -out=plan'
                sh 'terraform apply plan'
                sh 'terraform destroy -auto-approve'
              
             
            }
        }
        
      
      
    }
}
