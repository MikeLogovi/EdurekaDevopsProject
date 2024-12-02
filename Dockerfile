# Étape 1 : Utiliser une image Tomcat
FROM tomcat:11.0

# Étape 2 : Supprimer l'application par défaut dans le dossier webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Étape 3 : Copier le fichier WAR dans le répertoire webapps de Tomcat
COPY target/*.war /usr/local/tomcat/webapps/app.war

# Étape 4 : Exposer le port 8080
EXPOSE 8080

# Étape 5 : Lancer Tomcat
CMD ["catalina.sh", "run"]
