# Release process

## Archetypes

1. Update versions by running

        ./release-utils.sh -u -o <old snapshot version> -n <release version>

1. Commit the version update
1. Tag
    
        git tag -s <release version> -m "Release <release version>"
1. Stage the release
        
        ./release-utils.sh -r
1. Reset version numbers to snapshots
        
        ./release-utils.sh -u -o <release version> -n <new snapshot version>
1. Commit this
1. Promote the staged repo

## Quickstarts

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
