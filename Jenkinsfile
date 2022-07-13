pipeline {
   agent any
   stages {
       stage('setup') {
           steps {
               script {
                   sh 'docker login -u m8ndevops -p $PASSWORD'
		   sh 'kops '
               }
           }
       }
       stage('build') {
           steps {
               script {
		  sh 'docker build -t m8ndevops/m8ndemo:jenkins .'
               }
           }
       }
       stage('Push') {
           steps {
               script {
                  sh 'docker push m8ndevops/m8ndemo:jenkins'
               }
           }
       }
       stage('Deploy') {
           steps {
               script {
                  sh ''
               }
           }
       }
   }
}
