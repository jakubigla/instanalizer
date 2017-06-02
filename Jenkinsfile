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
                        agent {
                            docker {
                                image 'node'
                            }
                        }
                        steps {
                            sh 'npm install'
                        }
                    }
                )
            }
        }

    }

}
