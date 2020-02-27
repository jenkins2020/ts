#!/bin/groovy
pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
        }
    }

    stages {
        stage('Init') {
            steps {
                sh('echo $HOME')
            }
        }
    }
}
