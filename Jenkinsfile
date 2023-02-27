pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f java-tomcat-sample/pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                sh "pwd"
                sh "ls -a"
                sh "docker run --name mynginx2 -p 8081:80 -d nginx"
            }
        }

    }
}
