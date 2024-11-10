1. Clone the Repository
git clone <repository-url>
cd <repository-directory>

2. Provision the infrastructure with terraform
cd IAC/
terraform init
terraform apply

3. Build and Push the Docker Image
docker build -t <your-dockerhub-username>/static-webapp:latest ./APP
docker push <your-dockerhub-username>/static-webapp:latest

4. Deploy the Kubernetes Resources
kubectl apply -f KUBERNETES/

5. Access the Application
kubectl get svc webapp-service

6. Check Prometheus Dashboard
kubectl port-forward svc/prometheus 9090:9090

7. Access http://localhost:9090 in a browser


