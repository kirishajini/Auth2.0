# Facebook_App_OAuth

https://github.com/CyberIntern/Facebook_App_OAuth

Click Clone or download option in Green color and Download this Repository Facebook_App_OAuth-master as ZIP File

Go to the downloaded ZIP file, right click on it and select the option Extract Here, and the files will be extracted to the Folder Facebook_App_OAuth-master (which contain facebookapp folder and README.md file)

For the standard users who wish to run the application without any modifications, they can simply copy the facebookapp.war file from Facebook_App_OAuth-master/facebookapp/target/facebookapp.war and paste the .war file to webapps folder in the Apache-Tomcat Directory [ /opt/ < Apache-Tomcat Directory> /webapps ] and Extract the .war file there - which would create a directory called facebookapp

For the advanced users who made some modifications in the source code, they have to build up the new deployable .war file to place in the Apache-Tomcat webapps directory. For that purpose, we have to issue the command "mvn clean install" in the facebookapp directory - which would create a new facebookapp.war file inside the target directory. Then, we have to follow the previous steps to deploy the .war file and extract it in to the webapps directory

After that we have to startup the Apache server by issuing the command "sh catalina.sh run" in the Apache-Tomcat bin directory [ /opt/ < Apache-Tomcat Directory> /bin ]

Now go to your browser and type "localhost:8080/facebookapp" and enjoy using the web application to find your IP address and details along with your Facebook Account and Post the IP address details to your Facebook

# You can Find more information on this blogspot about the building up of Web Applications on top of OAuth concepts in Facebook and how to do them from the beginning in simple steps

# http://cyberinternblog.blogspot.com/
