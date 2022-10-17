JENKINS_DIND="jenkins-docker"

ID=$(docker ps --filter name=$JENKINS_DIND --format="{{.ID}}")
docker exec -i $ID sh<<EOF
docker stop dagger-buildkitd
docker rm dagger-buildkitd
docker volume rm dagger-buildkitd
EOF
