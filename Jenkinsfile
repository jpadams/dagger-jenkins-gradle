pipeline {
  agent { label 'cloak' }
  
  stages {
    stage("Run Gradle with Dagger") {
      steps {
        sh '''

          ./dagger.sh

        '''
      }
    }
  }
}
