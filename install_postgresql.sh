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


sudo apt install default-jdk -y

# Ouvrir le fichier postgresql.conf
sudo nano /etc/postgresql/10/main/postgresql.conf

# Ajouter la ligne 'listen_addresses = '*'' à la fin du fichier
echo "listen_addresses = '*'" | sudo tee -a /etc/postgresql/10/main/postgresql.conf

# Ouvrir le fichier pg_hba.conf
sudo nano /etc/postgresql/10/main/pg_hba.conf

# Ajouter la ligne 'host    all             all             206.198.148.52/24       trust' à la fin du fichier
echo "host    all             all             206.198.148.52/24       trust" | sudo tee -a /etc/postgresql/10/main/pg_hba.conf

sudo service postgresql restart

