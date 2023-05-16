git pull
bundle exec jekyll build
docker build . -t corumcorp/corumpage:latest
docker push corumcorp/corumpage:latest
microk8s kubectl delete -f deployment/deployment.yaml
microk8s kubectl apply -f deployment/deployment.yaml