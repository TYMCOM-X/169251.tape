filfnd:

lokppb+1/jrst pat
lokppb+3/jrst pat+2
lokppb+5/jrst pat+4

nlkppb+1/jrst pat+6
nlkppb+3/jrst pat+10

pat!pushj p,pat+12
pat+1!jrst (p1)
pat+2!pushj p,pat+12
pat+3!jrst givcbr
pat+4!pushj p,pat+12
pat+5!jrst givcb1
pat+6!pushj p,pat+12
pat+7!popj p,
pat+10!pushj p,pat+12
pat+11!jrst givcbr

pat+12!move t1,pat+27
pat+13!skipl t1
pat+14!move T1,pat+26
pat+15!movem j,0(t1)
pat+16!pop p,1(t1)
pat+17!push p,0(t2)
pat+20!pop p,2(t1)
pat+21!movem p1,3(t1)
pat+22!add t1,pat+25
pat+23!movem t1,pat+27
pat+24!jrst @-3(t1)
pat+25!4,,4
pat+26!-40,,pat+30
pat+27!0
pat+70!pat:
  