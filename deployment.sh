git pull
bundle exec jekyll build
docker build . -t corumcorp/corumpage:latest
docker push corumcorp/corumpage:latest
kubectl delete -f deployment.yaml
kubectl apply -f deployment.yaml