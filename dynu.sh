#!/bin/sh

# Înlocuiește USERNAME și PASSWORD cu datele tale
USERNAME=${DYNU_USERNAME}
PASSWORD=${DYNU_PASSWORD}

# Actualizare DNS
echo "Updating Dynu DNS..."
curl -k "https://api.dynu.com/nic/update?username=${USERNAME}&password=${PASSWORD}" -o /usr/local/bin/dynu.log
