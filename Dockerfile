FROM roundcube/roundcubemail

ENV DEBIAN_FRONTEND noninteractive

# Get Extra Plugins and Skins packages
WORKDIR /usr/src/roundcubemail/
RUN \
# Get plugin
    
    # Context Menu
    mkdir -p plugins/contextmenu; \
    curl -L https://github.com/johndoh/roundcube-contextmenu/archive/master.tar.gz | \
    tar xz --strip-components=1 -C plugins/contextmenu; \

# Get themes

    # Mabola theme
    mkdir -p skins/mabola-blue; \
    curl -L https://github.com/EstudioNexos/mabola-blue/archive/master.tar.gz | \
    tar xz --strip-components=1 -C skins/mabola-blue; \




WORKDIR /var/www/html
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["apache2-foreground"]
