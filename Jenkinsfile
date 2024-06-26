pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    docker.build("dreamscribai-app")
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    docker.image("dreamscribai-app").inside {
                        sh 'pytest'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    docker.withRegistry('https://registry.example.com', 'credentials-id') {
                        docker.image("dreamscribai-app").push()
                    }
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
