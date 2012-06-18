Sync repositories 
==============================

## Warning

1. Before to start make sure to have the latest updates from repositories
2. Strongly recomended to create a separated branch for it.

## as-archetypes 

1. Download as-archetypes and as-quickstarts repositories
2. Run diff -ur oldfolder newfolder > patch.diff and patch -p**N** < patch.diff. Where **N** is the number of path prefixes starting from **-p0**. 


For example:

		diff -ur /path/to/as-archetypes/jboss-html5-mobile-archetype/src/main/resources/archetype-resources/src /path/to/as-quickstarts/kitchensink-html5-mobile/src > patch.diff

		cd /path/to/as-archetypes/

		patch -p4 < ../patch.diff

3. Be careful before commit changes, because the archetypes make use of some variables, like this:

		set( $symbol_pound = '#' )
		set( $symbol_dollar = '$' )
		set( $symbol_escape = '\' )


Release process for Archetypes
==============================

Warning: Announce at aerogear-dev that the release process will begin


1. Regenerate the blanks by running

        ./generate-blank.sh -ca

   which will update the blank archetypes from the main sources

2. Commit any changes to the blanks

3. Update versions by running

        ./release-utils.sh -u -o <old snapshot version> -n <release version>

4. Commit the version update
5. Stage the release
        
        ./release-utils.sh -r

6. Communicate with the team

7. Wait for the feedback from tests

8. Sign your tag

		git tag -s <release version> -m <release version>

9. Reset version numbers to snapshots
        
        ./release-utils.sh -u -o <release version> -n <new snapshot version>
10. Commit this
11. Promote the staged repo

Quickstarts
==============================

1. Tag

        git tag -s <release version> -m "Release <release version>"
1. Push this tag

        git push aerogear <release version>
1. Do a fresh clone of <https://github.com/jbossas/quickstart/>

        git clone https://github.com/jbossas/quickstart.git
1. Switch to a temporary branch

        git checkout -b aerogear_updates
1. Merge the squashed contents of the recently-created tag

        git merge -Xtheirs --squash https://github.com/aerogear/as-quickstarts.git <release version>
1. Team review
1. Send a pull request to jbossas/master

Cordova
==============================

**Warning**
It is only necessary to copy client-side files to this repo. Do not copy anything outside of the src/main/webapp folder.

1. Copy changed/new client-side files from <https://github.com/aerogear/as-quickstarts/tree/master/kitchensink-html5-mobile/src/main/webapp> to <https://github.com/aerogear/kitchensink-cordova/tree/master/shared/www>
    * NOTE: You may want to make the changes to index.html manually rather than replacing that file to avoid step 2 in these instructions
2. After overwriting the files, you will need to look at the diff for index.html and put the Cordova related changes back in. Those changes include:
    * Adding the link to the Cordova JS script back in the head after app.js is included
    * Adding the Cordova functions for displaying the connection type back in near the bottom of the final script block in the head
    * Make the HTML changes to the #register-art article for displaying the connection type
3. Rebuild and test the changes based on [these instructions](https://community.jboss.org/wiki/ConvertingAnAeroGearPOH5WebAppToAHybridAppWithApacheCordova)
4. Once both apps build correctly, remember to replace the Cordova script with the {{CORDOVA_SCRIPT}} placeholder, then commit
