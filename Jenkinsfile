pipeline{
    agent any
    stages{
        stage('Source'){
            steps{
                git 'https://github.com/mohdfaqruddin01/foodinc-end-user-app.git'

                sh "npm install"
                echo 'Source Stage Finished'
            }

        }

        stage('Test') {
            steps{

                sh "npm run cypress:run"
                echo 'Test Stage Finished'
            }
        }

        stage('Build') {
            steps {

                sh "npm run build"
                echo "Build Stage Finished"
            }
        }
    }
}