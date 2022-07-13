pipeline {
   agent any
   stages {
       stage('setup') {
           steps {
               script {
                   sh 'docker login -u m8ndevops -p $DOCKER_PASSWORD'
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
                  sh 'sed -i s/latest/jenkins/g chart/values.yaml'
		  sh 'az login --service-principal -u $azureArmClientId -p $azureArmClientSecret --tenant $azureArmTenantId'
      		  sh 'az aks get-credentials --resource-group mani-poc --name mani-aks --admin'
      		  sh 'helm upgrade sample-app chart -i -n jenkins'
               }
           }
       }
   }
}
