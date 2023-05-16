git pull
bundle exec jekyll build
docker build . -t corumcorp/corumpage:latest
docker push corumcorp/corumpage:latest
microk8s kubectl delete -f deployment.yaml
microk8s kubectl apply -f deployment.yaml