pipeline {
    agent none
    stages {
        stage('Example Build') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Example Deploy') {
            when {
                expression {
                    currentBuild.buildCauses.toString().contains("Push event to branch")
                }
            }
            steps {
                echo 'Deploying'
            }
        }
    }
}
