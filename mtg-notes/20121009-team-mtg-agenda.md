# aerogear team meeting

Status Report
-------------

AeroGear-JS
-----------

- tons of documentation updates
- UUID stuff and tracking data synchonization states
- some naming changes, same APIs
- probably releases 23rd, JS M1 aligned with M6
- fix component versioning

AeroGear-Android
----------------

- Glen split the projects into library and TODO
- APIs are more streamlined
- right now callback-based APIs are being implemented
- TODO app got more impromevents from Passos
- UI refactor to align android version w/ iOS version, without losing the android-y feel.
- M1 is synced up M6
- Marko wants to see another alternative to http/rest adapter (to validate the pipes/pipeline abstraction)
- maybe using netflix OData endpoint as a starting point? websockets?

AeroGear-iOS
------------

- Roadmap implemented
- TODO app is awesome, courtesy of Christos :)
 - next steps are security-concerned
- CocoaPods published
- following CoreData integration for the persistence efforts
- websockets later (socketrocket lib)
- push notifications as a plus, if time is available

AeroGear-Security
-----------------

- The J1 demo went well
- Following picket-* activities closely
- We have a very thin shim over picket-*, sugar coated :)
- Bruno is talking closely to picket-* and trying to upstream improvements as much as possible

AeroGear-Controller
-------------------

- Dan is doing an awesome job
 - exception handling via routing
 - javadoc work
 - we'll talk about RESTEasy integration this week
- Security is looking good, Bruno is integrating it

Quickstarts
-----------

- Luke has been talking with Sande to get some changes fixed
- sync with Rafael Benevides

Release Packaging
-----------------

- having a big package
- linking to zipballs from github?
- quickstart packages for final releases, by OS
- provide on-premise demos to deploy on openshift

Site
----

- aerogear.org is live!
- jboss.org/aerogear fails, qmx will follow up

