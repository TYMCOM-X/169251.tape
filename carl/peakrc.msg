Received: from B39.Tymnet by D35.Tymnet; Wed, 23 Dec 87 10:46:05 PST
Received: from tymix.Tymnet by B39.Tymnet; Wed, 23 Dec 87 10:41:40 PST
Received: by tymix.Tymnet (5.51/4.7) id AA00732; Wed, 23 Dec 87 10:45:08 PST
Received: by birdix.Tymnet.com (3.2/SMI-3.2) id AA00833; Tue, 22 Dec 87
	13:28:24 PST
Return-path: <birdix!wrs@tymix.Tymnet> 
From: birdix!wrs (Bill Soley) 
Date: Tue, 22 Dec 87 13:28:24 PST 
To: b39!carl, b39!jms 
Message-id: <8712222128.AA00833@birdix.Tymnet.com> 
Subject: PEAK sources 

Can you point me at the current PEAK sources?  I'd like to teach it about
the SUN escape sequences.   Thanks -Bill
  From: Carl A Baltrunas <Carl> 
Date: Wed, 23 Dec 87 13:42:46 PST 
To: William R Soley <WRS@B39.Tymnet> 
Subject: Re: PEAK sources 
In-reply-to: <8712222128.AA00833@birdix.Tymnet.com> of Tue, 22 Dec 87 13:28:24
	PST

I'm interested in knowing if TUMS handles these addresses correctly...

Bill,  the current sources to PEAK are in (MYPEAK:32).  The module you need
to look at is REDISP.SAI.

If you want, just send me a copy of the escape sequences and I'll make the
changes, since I am more familiar with what it expects to do with them.  If
you have them XEROX-able, I can stop by your office and get a copy, or you
can mail it to me inter-office to mailstop D21, cube D2-325.

/Carl

PS.  Merry Christmas to you and Becky and William Christian
     I hope you're taking some time to be home (and not working) for
     the holidays.
Received: from B39.Tymnet by D35.Tymnet; Wed, 23 Dec 87 16:28:10 PST
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 23 Dec 87 16:19:47 PST 
To: <Carl@D35.Tymnet> 
Subject: Re: PEAK sources 
In-reply-to: your message of Wed, 23 Dec 87 13:42:46 PST

Thanks - I'll take a look at the source and see if its too cryptic and maybe
defer to you.  Otherwise I'll just put it on 39 to start with.  The only non-
trivial thing is the way insert works.  It takes a count of the number of
spaces to insert and then you write over the spaces.  This is much more
efficient than the way Hp does it.  I'll probably be spending the holidays
playing with my son and my Sun.  That's not a great loss, though, since we
don't celebrate Christmas or New Year they are just convenient long weekends.
I presume you do, though, so I hope you enjoy whatever you have planned.
-Bill
From: Carl A Baltrunas <Carl> 
Date: Wed, 23 Dec 87 18:41:10 PST 
To: William R Soley <WRS@B39.Tymnet> 
Subject: re: PEAK, REDISP 

The REDISP module does the entire redisplay algorithm.  There are a few
tables (setup by macros) which define terminal types.  The rest is pretty
much done with case statements with each type of terminal's escape seq's
banded together.  The functions that it relies on are pretty basic, so
you may not even need to worry much over character insert/delete unless
either function doesn't exist.  There should be a flag (or some thing) to
declare whether or not to use insert-delet-line and one for insert-delete-char.

The algorithm used to do one character at a time... I changed one versin to
delete as many as known at a time, but I don't remember whether it was PEAK
or VUE that I made the changes to.

Please send me a copy of the escape sequences... so I can add them to my tables
to be put into my next version of VUE if there ever is a next version.

/Carl
Received: from F33.Tymnet by D35.Tymnet; Wed, 18 May 88 17:05:37 PDT
Return-path: <JMS@F33.Tymnet> 
From: JMS@F33.Tymnet 
Date: Wed, 18 May 88 17:02:37 PDT 
To: carl 
Subject: "FYI: When using PEAK, and using"... 

FYI: When using PEAK, and using ^X^R edit ^X^W^M ^X^K over and over, it dies
after the 16th file with RELEAS&: INVALID CHANNEL NUMBER Called from 102516
Last SAIL call at 102307.  I thought Ken was smarter than that.  /Joe
Received: from F29.Tymnet by D35.Tymnet; Fri, 2 Sep 88 15:36:46 PDT
Return-path: <JMS@F29.Tymnet> 
From: JMS@F29.Tymnet 
Date: Fri, 2 Sep 88 15:35:41 PDT 
To: carl 
Subject: "Is there any way in PEAK or VUE"... 

Is there any way in PEAK or VUE to tell it how many lines are on the
screen?  In particular, I am running a VT100 emulator that has 48 lines
instead of 24 on a screen.   /Joe
   