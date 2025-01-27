#!/bin/sh

# Folosim variabilele de mediu setate în docker-compose.yml
USERNAME=${DYNU_USERNAME}
PASSWORD=${DYNU_PASSWORD}

# Verificăm dacă variabilele de mediu sunt setate
if [ -z "$USERNAME" ] || [ -z "$PASSWORD" ]; then
  echo "Error: Username or Password not set!"
  exit 1
fi

# Actualizare DNS Dynu
echo "Updating Dynu DNS..."
curl -k "https://api.dynu.com/nic/update?username=${USERNAME}&password=${PASSWORD}" -o /usr/local/bin/dynu.log
