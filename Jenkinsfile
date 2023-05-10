pipeline {
    agent any
    options {
        timeout(time: 30, unit: 'MINUTES')
    }
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
                sh 'export TF_LOG=DEBUG && terraform plan -lock=false > terraform-plan.log'
            }
            options {
                timeout(time: 10, unit: 'MINUTES')
            }
        }
        stage('Apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        stage('Cleanup') {
            steps {
                echo 'EC2 Instance is Successfully Deployed'
                //sh 'terraform destroy -auto-approve -var-file=terraform.tfvars'
            }
        }
    }
}
