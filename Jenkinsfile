pipeline {

    agent {
        node {
            label 'master'
            //customWorkspace '/var/lib/jenkins/workspace/'
        }
    }
    
    environment {
        Node_IP = "35.91.49.208"
        var1 = "Radicalfeb2024"
        string1 = "Webhook created from pipline job"
        ENV = "dev"
    }

    stages {

        stage('Git Checkout') {
            steps {
                git branch: 'dev-local-deploy',
                    credentialsId: 'git-https-creds',
                    url: 'https://gitlab.com/andromeda99/maven-project.git'
                }
        }

        stage('Testing Jenkins Global Variables') {
            steps {
                script {
                    try {
                       echo "${BUILD_NUMBER}"
                       echo "${BUILD_DISPLAY_NAME}"
                       echo "${WORKSPACE}"
                       echo "${JOB_NAME}"
                       echo "${JENKINS_HOME}"

                    } catch (Exception e) {
                        echo "Exception received because of --- " + e.toString()
                        sh 'exit 1'   
                        }

                }
                
            }
        }

        stage('Testing Env & local Variables') {
            steps {
                script {
                    try {
                        sh "whoami"
                        def test1 = "radical1"
                        echo "${var1}"
                        echo "${test1}"
                        echo "${string1}"
                        echo "${Node_IP}"
                        echo "${ENV}"
                        

                    } catch (Exception e) {
                        echo "Exception received because of --- " + e.toString()
                        sh 'exit 1'   
                        }

                }
                
                }
        }

        /*stage('Build') {
            steps {
                script {
                    try {
                    
                        sh '/usr/local/src/apache-maven/bin/mvn clean install -s .m2/settings.xml'
                        

                    } catch (Exception e) {
                        echo "Exception received because of --- " + e.toString()
                        sh 'exit 1'   
                        } 
                }

            }
        }

        stage('Scanning') {
            steps {
                echo 'Scanning in progress.'
            }
        }

        stage('Unit Testing') {
            steps {
                script {
                    try {

                        echo 'Testing..'
                        sh 'pwd'
                        sh 'sudo sh unit-test.sh'

                    } catch (Exception e) {
                        echo "Exception received " + e.toString()
                        sh 'exit 1'
                    }
                }
            }
        }

        stage('JFrog Upload') {
            steps {
                script {
                    try {
                        
                        //sh 'tar -czvf webapp-target.tar.gz webapp/target'
        
                        //sh 'curl -X PUT -u radicalsep2023weekend@gmail.com:cmVmdGtuOjAxOjE3Mjg3OTczMTk6RFNUYUxMN1BkQ053TDBJRUdBUktCWGVGblZH -T .m2/settings.xml https://radicalseptember2023.jfrog.io/artifactory/libs-snapshot-local/com/radical/sept/maven-project/3.0-SNAPSHOT/settings-${ENV}-${TIER}.xml'

                        sh 'curl -X PUT -u radicaldec2023weekend@gmail.com:cmVmdGtuOjAxOjE3Mzg0ODE0MjM6RTdMVGh6TXV4cnlIUnBBdGxtV1pVYXVWSkxB -T unit-test.sh https://radicaldec2023weekend.jfrog.io/artifactory/radical-maven-libs-snapshot/com/radical/jan-2024/maven-project/1.0-SNAPSHOT/unit-test.sh'

                        sh '/usr/local/src/apache-maven/bin/mvn clean deploy -s .m2/settings.xml'

                    } catch (Exception e) {
                        echo "Exception received " + e.toString() 
                        sh 'exit 1'
                    }
                }
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
                    sh 'sudo rsync -avt webapp/target/webapp /var/www/html'
                    sh 'sudo elinks  http://${Node_IP}/webapp/'
                    sh 'sudo elinks  http://${Node_IP}/webapp/index_dev.jsp'
                    sh 'sudo elinks  http://${Node_IP}/webapp/index.html'
                    sh 'sudo curl -kv http://${Node_IP}/webapp/index_dev.jsp'
                }

            }
        }*/

    }


}

