kind create cluster --config cluster.yml

cd .infrastructure/helm-chart/todoapp
helm dependency update

helm install todoapp
