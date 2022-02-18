#!bin/bash

#Getting updates and upgrading the server
sudo apt-get update -y  && sudo apt-get upgrade -y

#installing postgresql
sudo apt-get install postgresql postgresql-contrib -y

#To install python
sudo apt-get install python3 -y

# To install pip
sudo apt install python3-pip -y

# To install django
sudo pip install django==3.0.0

#installing python virtual enviroment
sudo apt install python3-venv -y


#Creating database
sudo -u postgres psql -c "create database mobalytics;"

#Creating user
sudo -u postgres psql -c "create user mob_db_user; alter user mob_db_user with encrypted password 'mob_db_password'; grant all privileges on database mobalytics to mob_db_user"

#Adding user named "mob_app_user"
sudo adduser mob_app_user

#Enter user's password and credentials

#Installing home directory for "mob_app_user"
sudo mkhomedir_helper mob_app_user
