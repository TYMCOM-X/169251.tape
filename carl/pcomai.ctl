:LOGFILE PCOMAI.LOG
;[PCOMAI - STRIP PCOM MAIL FROM my MAILBOX]
TTY LC
r mail
find processed:
type
purge
yes
quit
:$MAIL=$FALSE
;[End PCOMAI]
  