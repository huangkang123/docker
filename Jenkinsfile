pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''echo \'This is a build step\' 
								
echo \'docker build begin\''''
      }
    }

    stage('tag') {
      steps {
        sh '''echo \'This is a test step\'
docker tag nginx:latest 172.16.0.6/library/nginx:111'''
      }
    }

    stage('push') {
      steps {
        sh '''echo \'This is a deploy step\'   
docker login 172.16.0.6	
docker push 172.16.0.6/library/nginx:111	'''
      }
    }

    stage('end') {
      steps {
        echo 'This is a end step'
      }
    }

  }
}