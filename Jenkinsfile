pipeline {
  agent { label 'cloak' }
  
  stages {
    stage("run Gradle with Dagger") {
      steps {
        sh '''

          ./dagger.sh

        '''
      }
    }
  }
}
