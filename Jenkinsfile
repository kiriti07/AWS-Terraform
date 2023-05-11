pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/kiriti07/AWS-Terraform.git', branch: 'main'
            }
        }
        stage('Initialize') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Plan') {
            steps {
                //sh 'export TF_LOG=DEBUG && terraform plan -lock=false -out=terraform.plan > terraform-plan.log'
                sh 'terraform plan'
            }
        }
        stage('Apply') {
            steps {
                //sh 'terraform apply -lock=false -auto-approve terraform.plan'
                //sh 'terraform apply --auto-approve'
            }
        }
        stage('Destroy') {
            steps {
                //sh 'terraform apply -lock=false -auto-approve terraform.plan'
                sh 'terraform destroy'
            }
        }
        stage('Cleanup') {
            steps {
                echo 'EC2 Instance is Successfully Deployed'
            }
        }
    }
}
