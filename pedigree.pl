male(dan).
male(jack).
male(ted).
male(barney).

female(hannah).
female(robin).
female(lilly).
female(mary).

parent(dan,ted).
parent(dan, jack).
parent(hannah, ted).
parent(hannah, jack).
parent(barney, mary).
parent(robin, mary).

sibling(A,B):-parent(P,A),parent(P,B),A\=B.

mother(M,C):-female(M),parent(M,C).
father(F,C):-male(F),parent(F,C).

brother(B,S):-male(B),sibling(B,S).
sister(G,S):-female(G),sibling(G,S).



