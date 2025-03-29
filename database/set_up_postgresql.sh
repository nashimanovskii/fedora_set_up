#!/bin/bash
sudo dnf install postgresql-server postgresql-contrib -y
sudo systemctl enable postgresql
sudo postgresql-setup --initdb --unit postgresql
sudo systemctl start postgresql

sudo -u postgres psql <<EOF
CREATE USER aboba WITH PASSWORD 'aboba54!';
EOF
