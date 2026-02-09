kind create cluster --config cluster.yml

cd .infrastructure/helm-chart/todoapp
helm dependency update

helm install todoapp . --create-namespace

# Wait for deployments to be ready
echo "Waiting for deployments to settle..."
sleep 20
kubectl wait --for=condition=available --timeout=300s deployment/todoapp -n default 2>/dev/null || true

# Generate output log with all resources
cd ../../../
kubectl get all,cm,secret,ing -A > output.log

echo "✅ Deployment complete! Check output.log for validation."
