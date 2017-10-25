docker swarm leave --force
docker swarm init --advertise-addr 172.28.128.4
docker build -t uobhaproxy .

docker stack deploy -c webapp-stack.xml
