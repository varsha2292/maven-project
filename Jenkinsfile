pipeline {
    agent {label 'docker'}
    
    stages {
        stage('Git Checkout') {
        steps {
            git branch: 'dev',
                credentialsId: 'git-creds-https',
                url: 'https://gitlab.com/andromeda99/maven-project.git'
            }
        }
        stage('Build') {
            steps {
                sh '/usr/local/src/apache-maven/bin/mvn clean install'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t myweb:v1.0 .'
            }
        }
        stage('Testing') {
            steps {
                echo 'Testing..'
                sh 'ls -la'
                sh 'sudo cp -rf ${WORKSPACE}/webapp /tmp/myefs/docker_volume/'
                sh 'sudo docker run -itd --network=my_isolated_network --ip=192.168.2.111 --name webserver${BUILD_NUMBER} -p ${BUILD_NUMBER}:80 -v /tmp/myefs/docker_volume/:/var/www/html/ myweb:v1.0'
                
            }
        }
        stage('Deployment') {
            steps {
                echo 'Deployment..'
            }
        }
    }
}
