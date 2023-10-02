pipeline {
    agent any
    parameters {
        choice(name: 'Env', choices: ['Dev', 'Prod'], description: 'Pick Environment')
    }
    stages {
        
        stage('Terraform Init'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'aws', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh "terraform init"
                }
                
            }
        }
        stage('Select Workspace'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'aws', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    script{
                        if (params.Env == 'Dev') {   
                            sh "terraform workspace select dev"
                        } else {
                            sh "terraform workspace select prod"
                        }
                    }
                }
            }
        }
        stage('Terraform Apply'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'aws', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    script{
                        if (params.Env == 'Dev') {   
                            sh "terraform apply -auto-approve --var-file dev.tfvars"
                        } else {
                            sh "terraform apply -auto-approve --var-file prod.tfvars"
                        }
                    }
                }
            }
        }

    }
}
