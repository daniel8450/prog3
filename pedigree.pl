male(dan).
male(jack).
male(ted).
male(barney).
male(alex).
male(tanner).
male(nathan).

female(hannah).
female(robin).
female(lilly).
female(mary).
female(lisa).
female(sara).
female(eve).

parent(dan,ted).
parent(dan, jack).
parent(hannah, ted).
parent(hannah, jack).
parent(barney, mary).
parent(robin, mary).
parent(robin, nathan).
parent(barney, nathan).
parent(lilly, robin).
parent(tanner,robin).

sibling(tanner,dan).
sibling(dan,tanner).
sibling(robin,lisa).

sibling(A,B):-parent(P,A),parent(P,B),A\=B.

mother(M,C):-female(M),parent(M,C).
father(F,C):-male(F),parent(F,C).

brother(B,S):-male(B),sibling(B,S).
sister(G,S):-female(G),sibling(G,S).

grandma(M,C):-female(M),parent(M,V),parent(V,C).
grandpa(P,C):-male(P),parent(P,V),parent(V,C).

aunt(A,C):-female(A),sibling(A,P),parent(P,C).
uncle(U,C):-male(U),sibling(U,P),parent(P,C).

neice(N,G):-female(N),sibling(G,P),parent(P,N).
nephew(N,G):-male(N),sibling(G,P),parent(P,N).




