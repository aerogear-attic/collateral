Meeting minutes extracted from: https://gist.github.com/3912393

Author: Glen Daniels

Roadmap review:
===============

https://github.com/aerogear/beta.aerogear.org/blob/master/docs/planning/1.0.0/AeroGearAndroid.asciidoc

M1 progress:
------------

Glen:
 - Security stuff not yet in, want to line it up with what Matthias did for iOS. Probably in by the end of the week.
 - Refactor still in PR

Summers:
 - Issue with Eclipse
   - removed dependencies, managed to make it work
   - looks like Eclipse / Android tooling / Maven issue
   (https://android-review.googlesource.com/#/c/44640/)

   - We want to support Eclipse OOTB so … idea is to run special maven target that copies artifacts to libs folder, and setup project as normal android ant based project.

Jay:
 - Priorities:
   Aerogear 1.0.0-Final around Jan, Feb. We want Crud, and Security working nice by then, and play nicely with Eclipse by then. 


M2 feature set:
---------------

 - Data sync - We need to discuss across the libs, how that would work.
 - Querying
 - Pagination

 Jay:
  All the above are not something we promise for 1.0.0, it would be nice to have, but it’s not the priority.

 - Push 
  Seems a better candidate as it seems simpler to implement for now.

 - OAuth

 Bruno:
  - Authentication support: TOTP from PicketBox is what we'll have for 1.0.0. 

Which means OAuth is not on track for 1.0.0 as we don’t have server-side support for it. That means using Twitter, Facebook account for registration / authentication … we don’t have that, but's no sweat as it's not something we would cry over ATM.




Next steps
==========

Security:
---------

 Matzew:
  - protected resources on the server have to be accessed with proper auth-token header set. Otherwise you get 401 Not allowed. 
  - we send around the auth token every time.

Documentation:
--------------

Needs to be fleshed out ...

https://github.com/aerogear/beta.aerogear.org
(qmx: repo will be renamed to just aerogear.org now that it's live)

Published at: http://aerogear.org/docs/specs/


Tests:
------

More tests


M2 features:
------------

 - Data caching connected to data sync. 
 - Content provider interface is more forward looking thing.
(http://developer.android.com/guide/topics/providers/content-providers.html)


Developers:
-----------

 - Glen less involved
 - Summers full time
 - Marko more involved

