pipeline {
    //agent {label 'linux'}
    agent {
        node {
            label 'linux'
            customWorkspace '/tmp/efs/workspace/new-pipeline'
        }
    }

    environment {
    Node_IP = "65.0.29.18"
    TEST = "radical"
    string = "Webhook created from pipline"
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'dev-local-deploy',
                credentialsId: 'git-cred-http',
                url: 'https://gitlab.com/Bokya/maven-project.git'
            }
        }
        stage('Build') {
            steps {
                script {
                    try {
                        def test1 = "radical1"
                        echo "${TEST}"
                        echo "${test1}"
                        echo "${string}"
                        

                        sh '/usr/local/src/apache-maven/bin/mvn clean install'
                    } catch(Exception e) {
                        echo "Exception received" + e
                        } 
                }

            }
        }
        stage('Scanning') {
            steps {
                echo 'Scanning in progress.'
                
            }
        }
        stage('Testing') {
            steps {
                echo 'Testing..'
                sh 'pwd'
                sh 'sudo sh testing.sh'
            }
        }
        stage('Nexus Upload') {
            steps {
                echo 'Uploading artifact to Nexus.'
            }
        }
        stage('Deployment') {
            steps {
                script {
                    echo 'Deployment..'
                    sh 'sudo yum install httpd -y'
                    sh 'sudo yum install elinks -y'
                    sh 'sudo systemctl start httpd'
                    sh 'sudo systemctl enable httpd'
                    sh 'sudo rm -rf /var/www/html/*'
                    sh 'sudo rsync -avt ${WORKSPACE}/webapp/target/webapp /var/www/html'
                    sh 'sudo elinks  http://${Node_IP}/webapp/'
                    sh 'sudo elinks  http://${Node_IP}/webapp/index_dev.jsp'
                    sh 'sudo curl -kv http://${Node_IP}/webapp/index_dev.jsp'
                }

            }
        }
    }
}
