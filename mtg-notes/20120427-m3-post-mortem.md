M3 Post Mortem Meeting Notes
============================

__Release process__
* AEROGEAR*248
* Loosing changes during sync to archetype 
 * Looking into a creation process with a patch overlay from the quickstart 
* Moving back to SNAPSHOT after release
* Updating to include nexus stage testing
* Cordova, controller, security, etc.. as part of release process
* Pre & post staging testing
* Verify that JBIDE jira for central update is part of the plan
* Can scripts help here?
 * scripts to help version changes per repo (local)
 * The issue is the complexity that may be involved.
* Add details/link for maven sync window
* Sign Release artifacts
 * Jira to be created QMX 
* Make sure there is time in plan to execute tests
* One person release coordinator
 * Team effort for testing
 
__Private Communication Channels__
* Cell Phones, personal emails, etc..
* For any critical communications
* Wiki page with passwords (GPG) + howto
     * QMX

__Testing plan__
* AEROGEAR*251
* What was the main issues?
 * Specific test items
 * cli vs tools
 * device coverage
 * Browser coverage (IE, Chrome, etc...)
 * tests qunit, arquillian
 * archetype generation
 * tooling checks
 * - browser sim
 * - JS validation
    * enterprise repo testing
 * Minification testing

__CI usage__

* How to make CI more valuable
 * IRC Bot (qmx)
 * aerogear*builds email list
* Handle some set of the tests above
 * Extending qunit testing (not for as-*)
* Browserstack for team?
 * Can JBoss get an account, like jquery
 * Need to find out
* Create a wiki page for CI
 * Tips & tricks:
   * CCMenu
   * IRC msgs

Misc
----

* I don't think that Denizen is part of M4
 * It is a larger example, and requires us to nail down mvc, and security
 * AEROGEAR-7
* More detail and jira's around MVC, and security efforts
 * easier to track and discuss
* Discuss JBW demo work
  * Set up a demo end of next week
