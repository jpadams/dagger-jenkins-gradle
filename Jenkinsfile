pipeline {
  agent { label 'cloak' }
  
  stages {
    stage("Gradle build/run with Dagger") {
      steps {
        sh '''
          ./dagger1.sh
        '''
      }
    }
    stage("Gradle build/test from GitHub with Dagger") {
      steps {
        sh '''
          ./dagger2.sh
        '''
      }
    }
  }
}
