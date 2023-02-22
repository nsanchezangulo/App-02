pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }

    stages {
        stage('App-02') {
            steps {
                echo 'Hello World'
            }
        }
        
    
    stage('Build') { 
            steps { 
                script{
                 /*sh 'docker build -t test01 .'*/
                 app = docker.build("app02")
                }
            }
        }
      
       
    stage('SAST'){
            steps {
                 sh 'env | grep -E "JENKINS_HOME|BUILD_ID|GIT_BRANCH|GIT_COMMIT" > /tmp/env'
                 sh 'docker pull registry.fortidevsec.forticloud.com/fdevsec_sast:latest'
                 sh 'docker run --rm --env-file /tmp/env --mount type=bind,source=$PWD,target=/scan registry.fortidevsec.forticloud.com/fdevsec_sast:latest'
            }
        }
             
/*
    stage('Push') {
            steps {
                script{
                    docker.withRegistry('https://363412468025.dkr.ecr.us-east-2.amazonaws.com/app02', 'ecr:us-east-2:emoran') {
                    app.push("${env.BUILD_NUMBER}")
                    app.push("latest")
                    }
                }
            }
        }
     
    stage('Deploy'){
            steps {
                 sh 'kubectl apply -f deployment.yml'
            }
        }             
        
        stage('FDEVSEC-DAST'){
            steps {
                 sh 'sleep 1m'
                 sh 'env | grep -E "JENKINS_HOME|BUILD_ID|GIT_BRANCH|GIT_COMMIT" > /tmp/env'
                 sh 'docker pull registry.fortidevsec.forticloud.com/fdevsec_dast:latest'
                 sh 'docker run --rm --env-file /tmp/env --mount type=bind,source=$PWD,target=/scan registry.fortidevsec.forticloud.com/fdevsec_dast:latest'                 
            }
        }
        */
    }
}
