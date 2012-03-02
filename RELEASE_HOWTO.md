# Release process

## Archetypes

1. Regenerate the blanks by running

        ./generate-blank.sh -ca

   which will update the blank archetypes from the main sources

1. Commit any changes to the blanks

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

