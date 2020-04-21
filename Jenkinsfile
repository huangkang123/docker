pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'docker build begin'
        sh 'docker build -t nginx-redis .'
      }
    }

    stage('tag') {
      steps {
        sh '''
docker tag nginx-redis:latest 172.16.0.6/library/nginx:999'''
        echo 'This is tga setup'
      }
    }

    stage('push') {
      steps {
        sh '''docker login 172.16.0.6	
docker push 172.16.0.6/library/nginx:999	'''
        echo 'This is a deploy step\''
      }
    }

    stage('end') {
      steps {
        echo 'This is a end step'
      }
    }

  }
}