Lois-
Just to let you know what has been done on Systems 22, 25, 30 and
57.  I recompiled/reloaded K monitors in OSB and transmitted them
to their respective systems.  After confirming checksums I applied
the patches that were recorded in the PATCH.LOG file on each
system- except I found that there were 2 patches on System 25
made by Bill Soley that did not have corresponding PATCH files.
I'm going to check with Bill before I patch System 25 to
be sure that the patching is done correctly.  The monitors for
22, 30 and 57 were put in NEWMON and messages sent to operations.

I received a message from Valley Forge about System 22 on Sunday
that the new monitor would not load.  I checked back and found
that the MON22.CMD file was for a KL processor, so I changed
this file to generate a KI monitor on M33 and OSB.   After
regenerating a KI monitor for System 22, I repeated the steps
above.  Thus, 22, 30 and 57 have monitors waiting to be reloaded
from NEWMON.  When this has been done, Operations will move
the new monitors to SYSTEM.SAV, and I'll update the PATCH.LOG
files.

                        Dave S.
  