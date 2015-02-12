# de-assignments
Repository for data engineering assignments
Upendra Sabnis : upensabnis
Piyush Patel : pipa0979
Dheeraj Tele : crdsrm

Assignment 1 :
Student details REST Webservice  developed in java and mysql using Netbeans. 

Technology stack and deployment:
- This assignment is done using Netbeans 7.3, Glassfish web server 3.1.2 and MySQL 5.5.
- To test this project deploy the StudentDB project in glassfish server.
- Install MySQL if not present. Import the .sql file located under Database folder on github, in MySQL database.
- Open browser and type http://localhost:8080/StudentDB

Please follow the following steps to get this project working :

- Instead of trying to build a project from scratch you can download only StudentDB.war file committed under StudentDB/dist
- We have used glassfish server 3.1.2 to deploy our web service and MySQL database to create a SQL relation Student.
- After downloading glassfish 3.1.2 or netbeans 7.3 (wherin glassfish will be downloaded by default) you can deploy this war using command line. Probable commands would be, (Goto glassfish deployed folder/bin) a) To deploy war : asadmin StudentDB.war b) To start glassfish : asadmin start-domain --verbose
- After starting glassfish, open admin console of glassfish server : http://localhost:4848
Under 'Resources/JDBC/JDBC Connection pools' , create a connection to mysql by entering name and other details about your mysql. You can test your connection by pinging it.
- Under 'Resources/JDBC/JDBC Resources', create a resource with name 'de-assignments' which is used by our project. In the pool name drop down select the connection pool created in step 5.
Import the student.sql file committed under StudentDB/Database into mysql.
- Try http://localhost:8080/StudentDB
