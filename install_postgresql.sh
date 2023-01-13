#!/bin/bash
sudo apt-get update

#install java
sudo apt install default-jdk -y


sudo apt-get install -y postgresql postgresql-contrib

# Modification du mot de passe de l'utilisateur postgres
sudo -u postgres psql -c "alter user postgres with password 'postgres';"

# Création de la base de données
sudo -u postgres createdb drops

# Création d'un utilisateur pour la base de données
sudo -u postgres createuser -P drops

# Accord des privilèges à l'utilisateur sur la base de données
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE drops TO drops;"
