pipeline {
   agent any
   stages {
       stage('code') {
           steps {
               script {
                   sh 'docker version'
               }
           }
       }
       stage('build') {
           steps {
               script {
		  sh 'docker build -t m8ndevops/m8ndemo:jenkins'
               }
           }
       }
   }
}
