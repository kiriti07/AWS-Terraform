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
		            sh 'export TF_LOG=DEBUG && terraform plan -lock=false > terraform-plan.log'
                   //sh 'terraform plan -debug'
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
