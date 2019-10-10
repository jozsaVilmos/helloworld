pipeline {
    environment {
      registry = 'trinity99/helloworld'
      registryCredential = 'trinity99'
      dockerImage = ''
    }
    agent any
    stages {
        stage('Cloning Git Repo') {
            steps {
                git 'https://github.com/jozsaVilmos/helloworld'
            }
        }
        //stage('Build the app') {
           //steps {
                //sh 'npm install'
            //}
        //}
        stage('Building image') {
            steps{
                script {
                    dockerImage = docker.build registry
                    }
                }	
            }
        stage ('Deploy image'){
            steps{
                script{
                    docker.withRegistry( '',registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Deploy to EBS'){
                when{
                    branch 'master'
                }
            steps {
                withAWS(region:'eu-west-2',credentials:'awsmalachite2'){
                    sh 'sh ./deploy.sh'
                }
            }
        }
    }
}

