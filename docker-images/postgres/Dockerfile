FROM postgres:latest

# On Windows root will own the files, and they will have permissions 755
# COPY pg_hba.conf /var/lib/postgresql/data/pg_hba.conf
COPY server.key /var/lib/postgresql/server.key
COPY server.crt /var/lib/postgresql/server.crt

# update the privileges on the .key, no need to touch the .crt  
RUN chmod 600 /var/lib/postgresql/server.key
RUN chown postgres:postgres /var/lib/postgresql/server.key
# RUN chown 999:999 /var/lib/postgresql/server.key

# COPY postgresql.conf /var/lib/postgresql/data/postgresql.conf
# COPY pg_hba.conf /var/lib/postgresql/data/pg_hba.conf



# ADD ssl_cert.pem /etc/ssl/certs/ssl_cert.pem
# ADD localhost_ssl_key.pem /etc/ssl/private/ssl_key.pem
# RUN chmod 400 /etc/ssl/private/ssl_key.pem



