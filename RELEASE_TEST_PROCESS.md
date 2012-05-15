# Release test process

Following are the precondition for release aerogear.


## as-archetypes

1.	git clone https://github.com/aerogear/as-archetypes.git

2.	cd as-archetypes/jboss-html5-mobile-archetype && mvn clean install

3.	mvn archetype:generate \                                                     
        -DarchetypeArtifactId=jboss-html5-mobile-archetype \
        -DarchetypeGroupId=org.jboss.aerogear.archetypes \
        -DarchetypeVersion=1.0.0.M3b 
        

## as-quickstarts

1. git clone https://github.com/aerogear/as-quickstarts.git


## Deployment on AS7

Requirement: Start JBoss
	
	set JBOSS_HOME=/path/to/jboss-as-7.1.1.Final/
	$JBOSS_HOME/bin/standalone.sh

### A - Maven

1. mvn clean package
2. mvn jboss-as:deploy
3. Access your **desktop** browser at http://localhost:8080/<artifactId> (*chrome, IE, safari, opera….*)
4. Access your **mobile** browser at http://localhost:8080/<artifactId> (*Android, iOS, blackberry…*)
4. Access your browser at <app-root>/src/test/qunit/index.html

### B - Running arquillian tests

1. Start JBoss
	set JBOSS_HOME=/path/to/jboss-as-7.1.1.Final/
	$JBOSS_HOME/bin/standalone.sh
	
2. mvn test -Parq-jbossas-remote
3. mvn clean package jboss-as:deploy -Pminify
4. Stop JBoss
5. mvn test -Parq-jbossas-managed	


### C - Eclipse

1. Import the generated project to eclipse
2. Start JBoss
3. Run MemberRegistrationTest
4. Deploy the project with eclipse
5. Access your browser at http://localhost:8080/<artifactId>
6. Access your browser at <app-root>/src/test/qunit/index.html

### JBoss EAP

1. Download JBoss EAP (JBEAP-6.0.0-ER6.1)

2. Start JBoss
	
	set JBOSS_HOME=/path/to/jboss-eap-6.0.0.ER6.1/
	$JBOSS_HOME/bin/standalone.sh
	
3. mvn archetype:generate \
        -DarchetypeArtifactId=jboss-html5-mobile-archetype \
        -DarchetypeGroupId=org.jboss.aerogear.archetypes \
        -DarchetypeVersion=1.0.0.M3b \
-Denterprise=true

4. Repeat A,B and C steps.

### JBoss Tools

1. Add to your settings.xml the stage repository
2. Open JBoss Tools 
3. Create a new HTML5 Project
4. Repeat A,B and C steps.



