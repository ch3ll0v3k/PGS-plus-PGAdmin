#!/bin/bash

# W_DIR="./docker-images/postgres"
W_DIR="./ssl-test"

PASSWD="super-password"

openssl req -new -text -passout "pass:${PASSWD}" -subj /CN=localhost -out "${W_DIR}/server.req" -keyout "${W_DIR}/privkey.pem"
openssl rsa -in "${W_DIR}/privkey.pem" -passin "pass:${PASSWD}" -out "${W_DIR}/server.key"
openssl req -x509 -in "${W_DIR}/server.req" -text -key "${W_DIR}/server.key" -out "${W_DIR}/server.crt"
chmod 600 "${W_DIR}/server.key"

