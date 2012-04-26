#!/bin/sh
ARCHETYPE_PATH="/Volumes/v3/jboss/as-archetypes/jboss-html5-mobile-archetype"
QUICKSTART_PATH="/Volumes/v3/jboss/as-quickstarts/kitchensink-html5-mobile"
TMPDIR="$HOME/jboss-tmp"

rm -rf $TMPDIR
mkdir -p $TMPDIR

cd $ARCHETYPE_PATH
mvn install
cd $TMPDIR
mvn archetype:generate -DarchetypeGroupId="org.jboss.aerogear.archetypes" \
-DarchetypeArtifactId="jboss-html5-mobile-archetype" \
-DarchetypeVersion="1.0.0.M2b-SNAPSHOT" \
-DgroupId="org.jboss.as.quickstarts" \
-DartifactId="jboss-as-kitchensink-html5-mobile" \
-Dversion="1.0.0-SNAPSHOT" \
-Dpackage="org.jboss.as.quickstarts.html5_mobile"
cd $TMPDIR
cd jboss-as-kitchensink-html5-mobile
git init && git add . && git commit -m "from archetype"
GIT_DIR="$QUICKSTART_PATH/../.git/" git archive HEAD:kitchensink-html5-mobile/ | tar -xvf -
git add . && git commit -m "from quickstart"
git format-patch HEAD~1

