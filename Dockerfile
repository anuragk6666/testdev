FROM tomcat:8
LABEL app=my-app
COPY target/*.war /home/anujkk/ak/tomcat/webapps/
# testing webhook
