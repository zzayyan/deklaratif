%Naive Bayes
probs(X,W) :-
    setof(C,N^E^prediction(N,C,E),Cs),
    findall(C/P,(member(C,Cs),
                 cond_prob(X,C,PL),
                 class_prob(C,PC),
                 mult(PL,PS),
                 P is PS*PC),W).
cond_prob([],_,[]).
cond_prob([AV|L],C,[AV/P|PL]) :-
    findall(I,prediction(I,C,_),All),
    length(All,N),
    findall(I,(prediction(I,C,AVL),member(AV,AVL)),W),
    length(W,M),
    P is M/N,
    cond_prob(L,C,PL).
class_prob(C,PC) :-
    findall(I,prediction(I,_,_),All),
    length(All,N),
    findall(I,prediction(I,C,_),W),
    length(W,M),
    PC is M/N.
mult([],1) :- !.
mult([_/P|L],Ps) :-
    mult(L,P1),
    Ps is P1*P.

