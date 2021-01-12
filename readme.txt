# https://www.freecodecamp.org/news/kubernetes-vs-docker-whats-the-difference-explained-with-examples/
# Docker
docker build -t node-web-app .
docker run --name node-web-app -p 8080:8080 node-web-app

# Kubernetes
kubectl get service
kubectl get pods
kubectl apply -f application/deployment.yaml
kubectl apply -f application/service.yaml
kubectl describe svc my-service-for-my-webapp
kubectl delete -f application/service.yaml
kubectl delete -f application/deployment.yaml
