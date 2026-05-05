#!/bin/bash
cd /home/container

# Pterodactyl przekazuje STARTUP jako zmienną
# Zamienia {{SERVER_MEMORY}} na wartości
eval $(echo ${STARTUP} | sed 's/{{/${/g; s/}}/}/g')
