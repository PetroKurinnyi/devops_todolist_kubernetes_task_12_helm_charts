kind create cluster --config cluster.yml

cd helm-chart/todoapp
helm dependency update

helm install todoapp
