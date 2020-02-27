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
                sh('rpmdev-setuptree')
                sh('ls ~/rpmbuild/SOURCES')
                dir ('~/rpmbuild/SOURCES') {
                    sh('pwd')
                    sh('wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz')
                }
            }
        }
    }
}
