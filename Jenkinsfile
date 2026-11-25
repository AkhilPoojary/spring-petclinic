pipeline {

    agent any

    tools {
        jdk 'JDK-21'
        maven 'Maven'
    }

    stages {

        stage('SCM CHECKOUT') {
            steps {
                echo 'PetClinic source code retrieved successfully'
                bat 'git status'
                bat 'dir'
            }
        }

        stage('APPLICATION BUILD') {
            steps {
                echo 'Starting Maven build'
                bat 'mvn clean compile'
            }
        }

        stage('UNIT TEST') {
            steps {
                echo 'Executing unit tests'
              
            }
        }
    }

    post {

        success {
            echo 'PetClinic CI pipeline executed successfully'
        }

        failure {
            echo 'PetClinic CI pipeline execution failed'
        }

        always {
            echo 'Pipeline execution completed'
        }
    }
}
