# dagger-jenkins-java
Run this in Jenkins via the included `Jenkinsfile`.

Run this locally via the individual shell scripts:
```
./dagger1gradle.sh
./dagger2gradlew.sh
./dagger3ant.sh
```

These scripts drive queries in [`queries.graphql`](./queries.graphql).
The queries hit the [Dagger](dagger.io) API to make the magic happen!
