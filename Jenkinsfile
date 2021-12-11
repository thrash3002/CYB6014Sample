pipeline {
    agent {
        docker {
            image 'mcr.microsoft.com/dotnet/core/sdk:3.1.101'
        }
    }
    stages {
        stage('VerifyEnvironent') {
            steps {
                sh '''
                    dotnet --list-sdks
                    dotnet --list-runtimes
                '''
                sh 'printenv'
                sh 'ls -l "$WORKSPACE"'
            }
        }
        stage('Build') {
            steps {
                sh 'dotnet build "$WORKSPACE/netcoreapp.sln"'
            }
        }
        stage('Test') {
            steps {
                dir("$WORKSPACE/netcoreapp.tests") {
                    sh 'dotnet test netcoreapp.test.csproj'
                }
            }
        }
        stage('SecurityScan') {
            steps {
                echo 'TODO: perform security scan here'
            }
        }
    }
}