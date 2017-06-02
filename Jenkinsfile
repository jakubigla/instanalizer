pipeline {

    agent {
        docker {
            image 'docker'
        }
    }

    stages {
        stage ('Build') {
            steps {
                parallel (
                    "ui" : {
                        steps {
                            sh 'npm install'
                        }
                    }
                )
            }
        }

    }

}
