pipeline
{
   agent any
   
      
    stages {
     stage('Pull') {
      steps{
       script{
           checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ryaanm/ContinousDelivery']]])
 
         }
         }
         }
     stage('Build')
  {
             steps {
               script{
       sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml"
                        }}}
 	stage('docker') {
                  steps {
                   script{
     sh "ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml"

}}}
     stage('docker-registry'){
            steps{
                script{
	sh "ansible-playbook ansible/docker-registry.yml -i ansible/inventory/host.yml -e ansible_become_password=mohamed"
                }
            }
        }

         }
         }
