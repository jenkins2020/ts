#!/bin/groovy
pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
        }
    }

    stages {
        stage('init') {
            steps {
                sh('rpmdev-setuptree')
                // sh('ls ~/rpmbuild/SOURCES')
                dir ('~/rpmbuild/SOURCES') {
                    // sh('pwd')
                    sh('wget -c -q http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz')
                }
                dir ('~/rpmbuild/SPECS') {
                    // sh('pwd')
                    sh('rpmdev-newspec hello')
                }
            }
        }
    }
}
