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
parent(lilly, robin).

sibling(A,B):-parent(P,A),parent(P,B),A\=B.

mother(M,C):-female(M),parent(M,C).
father(F,C):-male(F),parent(F,C).

brother(B,S):-male(B),sibling(B,S).
sister(G,S):-female(G),sibling(G,S).

grandma(M,C):-female(M),parent(M,V),parent(V,C).
grandpa(P,C):-male(P),parent(P,V),parent(V,C).

aunt(A,C):-female(A),sister(A,P),parent(P,C).
uncle(U,C):-male(U),brother(U,P),parent(P,C).

neice(N,G):-female(N),aunt(G,N).
neice(N,G):-female(N),uncle(G,N).
nephew(N,G):-male(N),aunt(G,N).
nephew(N,G):-male(N),uncle(G,N).



