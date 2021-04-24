# Docker_OSM9_Swarm
Skript na inštaláciu Dockeru a OSM 9 cez docker swarm.

Skript je vytvorený pre rýchlejšiu inštaláciu OSM a Dockera.
Skript bol vytvorený pre tímový projekt.
----------------------------------
Pre spustenie skriptu ./docker_osm9.sh je potrebné pouzit príkaz sudo chmod -R +777 ./docker_osm9.sh
----------------------------------
DOCKER
Návod pre inštaláciu dockeru nájdete tu: https://docs.docker.com/engine/install/ubuntu/
Skript nainštaluje verziu 5:20.10.3~3-0~ubuntu-bionic.
Pre zmenu verzie je nutné si pozrieť list verzií a prepísať VERSION_STIRNG v príkaze sudo apt-get install docker-ce=VERSION_STRING docker-ce-cli=VERSION_STRING containerd.io -y
-----------------------------------
OSM
Návod pre inštaláciu OSM nájdete tu: https://osm.etsi.org/docs/user-guide/03-installing-osm.html
Skript nainštaluje OSM verziu 9 cez docker swarm.
Pre inštaláciu cez kubernetes odstránte parametere -c swarm v riadku kde sa nachádza príkaz ./install_osm.sh -c swarm -y.
