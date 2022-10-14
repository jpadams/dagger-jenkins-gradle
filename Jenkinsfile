pipeline {
  agent { label 'dagger' }
  
  stages {
    stage("Gradle build/run with Dagger") {
      steps {
        sh '''
          ./dagger1gradle.sh
        '''
      }
    }
    stage("Gradle build/test from GitHub with Dagger") {
      steps {
        sh '''
          ./dagger2gradlew.sh
        '''
      }
    }
    stage("Ant build of Tomcat with Dagger") {
      steps {
        sh '''
          ./dagger3ant.sh
        '''
      }
    }
  }
}
