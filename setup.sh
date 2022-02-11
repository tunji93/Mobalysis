#!bin/bash

# A script that installs postgresql on ubuntu and adds a new user.

username="mob_db_user"
Password="mob_db_pass"

sudo apt update -y 

sudo apt install postgresql postgresql-contrib

sudo -i -u postgres <<EOF
psql -c "CREATE USER $username WITH PASSWORD $password"
EOF

