#!bin/bash
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install postgresql postgresql-contrib -y
sudo -u postgres psal - "create database mob_db;"
sudo -u postgres psql -c "create user mob_db_user; alter user mob_b_user with encrypted password "mob_db_password"; GRANT ALL PRIVILEGES ON DATABASE mob db TO mob_db_user;”

