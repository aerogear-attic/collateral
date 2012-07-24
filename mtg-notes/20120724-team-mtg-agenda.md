AeroGear Team Meeting Agenda
============================


1.0.0.M5 Release
-----------------

* August 15th
* Contents:
 * POH5 updates
 * Quickstart bugs
 * JBoss Toy Store (cordova + web repos)
 * AeroGear Controller Prototype
 * JS Lib Prototype

__Minutes__

* No updates
 
New Project Site
----------------
* Status
 * OpenShift hosting
 * AsciiDoc integration
 * Design status

__Minutes__

* AsciiDoc integration with Awestruct is taking time
 * JDF site has some custom code, and stripping out what is common
* Openshift hosting easy once the site base is finished
* Design updated
 * Waiting on image from .org
 * No other updates since then
 * Need to wait for img, and hosting
 
AeroGear Controller
-------------------

* Status
 * Its been quite, any offline comments/updates
 * Security integration

__Minutes__

* No updates from threads, its been quite
* Bruno has been working on Security integration
 * Broke our DS integration in controller demo into aerogear-security
 * Light shim for security while DS & picketlink details are worked out
 
Updated Security API Doc
------------------------

* Status
 * Security gist
 * DS support to aerogear-security
 * PicketLink support to aerogear-security
 * REST endpoints to authentication 
 * Initial roadmap to aerogear-security (server side)
 * DS requirements sync for non-JSF use-cases
 * Updates on cross-project security discussions 

__Minutes__

* Concerns about DS security roadmap
 * High level roadmap seems in flux
 * Covering both "big picture" and actual plans
 * It is also very confusing still about DS vs. picketlink
* DS security merged today with some basic IDM
 * Needs to be looked at closer
* DS requirement updates for non-jsf
 * Will update our roadmap/req first
 * Will discuss with DS about the ideas in aerogear-dev
 * Then transfer to DS req the parts that are appropriate
 
Updated Persistence API Doc
----------------------------

* Status

__Minutes__

* Should be ready alpha release
 * Waiting for a demo app to showcase
* Will review security integration options

TODO App
--------

* Status
* Jira's

__Minutes__

* Does not need to have full functionality
* Not starting with backbone, KISS at first
* Limit it to tasks, maybe simple project/tags
* Jira's need to be defined

Roadmap Definition
------------------

* Status
 * Jay's been backlogged :-(
 * Focus on this today/tomorrow

__Minutes__

* Should have drafts in place today
 * Discuss more tomorrow, and update
* README vs Roadmap vs Requirements
 * README == completed functionality
 * Roadmap == high level plans by release
 * Requirements == details of what will be

Misc
----

* Moving aerogear-dev to lists.jboss.organ
 * Waiting on eng-opts
* aerogear email in place
 * Can update accounts with it