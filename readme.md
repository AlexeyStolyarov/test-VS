## Комманды

docker build -t dodi78/hello-node:v2 .
docker login
docker push dodi78/hello-node:v2

helm install stable/nginx-ingress --name my-nginx
либо 
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/provider/baremetal/service-nodeport.yaml


kubectl create -f ./node-test.yaml
kubectl create -f ./node-nginx-ingress.yaml

# смотрим адрес
minikube service hello-node --url

cat ./yandex-tank/readme


## яндекс танк

опытным путём установил, что проблемы начинаются на 30000 RPC - виртуалка упирается в процессор, на графике полочка.
других ошибок, кроме network_timout не было.

тут нужно учитвать следующие моменты:

- отдаётся небольшая статичкская страничка, без сторонних сервисов, без SSI и прочего.
- кубик собран  с использованием дендрално-фекального метода. все три ноды это виртуалки с 4Gb ОЗУ и дисками на общем  NFS ресурсе. тормозят неимоверно.


## по времени.
ушло около трёх часов вчера плюс часик на тестирование сегодя.

очень много времени ушло из за:

- тормозов тестового куба. каждая команжа kubectl отрабатывает по 20..30 секунд.
- никак не мог понять каким образом експозить сервис - в итоге сделал через NodePort.



