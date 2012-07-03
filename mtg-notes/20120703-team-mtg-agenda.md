AeroGear Team Meeting Agenda
============================

1.0.0.M5 Release
-----------------

* Currently scheduled for July 18th
* Not releasing if there is no pressing reason
 * Recommend delay 1 month
* Contents:
 * POH5 updates
 * Quickstart bugs
 * JBoss Toy Store
 * AeroGear Controller Prototype
 * JS Lib Prototype
 
Roadmap Definition
------------------

__Client Libraries__

* Section below for breakdown

__AeroGear Controller__

* QMX is the owner
* Initial implementation PoC
* Plans, and dates to be worked over the next two weeks
* Need to define jira tasks, and component in AEROGEAR

__Awestruct Site__

* Replace current site with mobile ready Awestruct site
* Site & Docs become PR-able
* Doc Impl
 * Asciidoc like JDF
 * Docbook like Richfaces and others
 * XML/ASL like jquery

__Secondary Items__

Secondary for now, not long term

* Testing updates with Arquilian
* Forge plugin development
* Tools integration with JBoss Tools

Client Library Roadmap
----------------------

I've broken this down into different deliverables, and area's of focus.  Not all of these will be initial priorities but should kept in mind.  I've also separated the specific functionality from the library.  Initial client library focus is on persistence and security. 

__AG JavaScript__

* Deliverable: 
 * aerogear.js
 * API Docs
 * Demo app
 * Template app
* Actions
 * Post API prototype to dev list
 * Discuss implementation timelines
 * Create actionable jira's

__AG Android__

* Deliverable
 * org.jboss.aerogear.jar
 * API Docs
 * Demo app
 * Template app for SDK

__AG iOS__

* Deliverable
 * aerogear.dmg (installable framework)
 * API Docs
 * Demo app
 * Template app for xcode

__Orthogonal Concerns__

*Security*

* Primary focus:
 * Authentication for REST based calls
 * Auth* support in MVC

*Connectivity*

* REST/WebSocket
* REST is initial priority
* WebSockets to follow

*Server-Side Integration*

* Working with server-side teams on integration requirements

*Hybrid Integration*

* Primary focus is Cordova

__Secondary Items__

* Windows Phone support
* BlackBerry support
