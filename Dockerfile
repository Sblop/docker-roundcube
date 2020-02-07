FROM roundcube/roundcubemail

# ENV DEBIAN_FRONTEND noninteractive

# Get Extra Plugins and Skins packages
WORKDIR /var/www/html

RUN \
# Add Carddav functions to roundcube
    mkdir -p plugins/carddav \
&& curl -L https://github.com/blind-coder/rcmcarddav/releases/download/v3.0.3/carddav-3.0.3.tar.bz2

#    curl -L https://github.com/blind-coder/rcmcarddav/releases/download/v3.0.3/carddav-3.0.3.tar.bz2 | \
#    tar xjf --strip-components=1 -C plugins/carddav; 

# Get themes

#RUN
    # Mabola theme
#    mkdir -p skins/mabola-blue; \
#    curl -L https://github.com/EstudioNexos/mabola-blue/archive/master.tar.gz | \
#    tar xz --strip-components=1 -C skins/mabola-blue; \




WORKDIR /var/www/html
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["apache2-foreground"]
