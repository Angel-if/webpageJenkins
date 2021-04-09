Skip to content
 Enterprise
Search or jump to…

Pull requests
Issues
Explore
 
@VF089597 
Learn Git and GitHub without any code!
Using the Hello World guide, you’ll start a branch, write comments, and open a pull request.


cerner-corp
/
ml-cardiology-diagnostic-result
Private
0
0
1
Code
Issues
Pull requests
7
Projects
Wiki
Insights
ml-cardiology-diagnostic-result/Jenkinsfile

Ruslan Shevchenko Added Sonar check.
Latest commit ad2bbcb 10 days ago
 History
 6 contributors
@PG084843@ZG085773@zv085772@PH085802@JF085771@AC085770
57 lines (54 sloc)  1.59 KB
  
pipeline {
    agent { label 'facjenkinsl433 || facjenkinsl434 || facjenkinsl428'}
    options {
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '30', numToKeepStr: '5')
        timestamps()
    }
    tools {
        jdk "11"
    }

    stages {
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('cardiology_sonarqube') {
                    bat "mvn clean package sonar:sonar"
                }
            }
        }

        stage('SonarQube Quality Gate') {
            steps {
                script {
                    timeout(time: 5, unit: 'MINUTES') {
                        def qg = waitForQualityGate()
                        if (qg.status != 'OK') {
                            error "Pipeline aborted due to quality gate failure: ${qg.status}"
                        }
                    }
                }
            }
        }

        stage ('Build and Test') {
            steps {
                withMaven(maven: '3.6.3') {
                    sh 'mvn clean verify -U'
                }
            }
        }
    }
    post {
        always {
            script {
                ws("$workspace/ml-cardiology-result-rest-test/"){
                    allure([
                        includeProperties: false,
                        jdk: '',
                        properties: [],
                        reportBuildPolicy: 'ALWAYS',
                        results: [[path: 'target/allure-results']]
                    ])
                }
            }
            deleteDir()
        }
    }
}
© 2021 GitHub, Inc.
Help
Support
API
Training
Blog
About
GitHub Enterprise Server 2.22.4
