%

male(john).
male(jim).
male(sam).
male(rico).
male(preston).
male(brock).
male(omar).

female(stephanie).
female(hannah).
female(suzie).
female(sarah).
female(jan).
female(ivette).
female(madison).

malefemalematch(X,Y) :- male(X), female(Y) | male(Y), female(X).

likes(john, suzie).
likes(suzie, john).
likes(hannah, brock).
likes(omar, ivette).
likes(preston, omar).
likes(rico, ivette).
likes(madison, brock).
likes(jan, madison).
likes(stephanie, jim).
likes(jim, stephanie).

commoninterests(X,Y) :- agecompatible(X,Y),  likesdogs(X), likesdogs(Y), malefemalematch(X,Y)|
            agecompatible(X,Y), likescats(X), likescats(Y), malefemalematch(X,Y)|
            agecompatible(X,Y), likesdogs(X), likesdogs(Y), drinks(X), drinks(Y), malefemalematch(X,Y)|
            agecompatible(X,Y), likescats(X), likescats(Y), drinks(X), drinks(Y), malefemalematch(X,Y)|
            agecompatible(X,Y), drinks(X), drinks(Y), smokes(X), smokes(Y),malefemalematch(X,Y) |
            agecompatible(X,Y), smokes(X), smokes(Y),malefemalematch(X,Y)|
            agecompatible(X,Y), likesdogs(X), likesdogs(Y), smokes(X), smokes(Y),malefemalematch(X,Y)|
            agecompatible(X,Y), likescats(X), likescats(Y), smokes(X), smokes(Y),malefemalematch(X,Y).


likesdogs(john).
likesdogs(sam).
likesdogs(brock).
likesdogs(suzie).
likesdogs(hannah).
likesdogs(stephanie).

likescats(john).
likescats(omar).
likescats(preston).
likescats(stephanie).
likescats(madison).
likescats(sarah).
likescats(ivette).
likescats(jan).
likescats(suzie).

smokes(john).
smokes(jim).
smokes(brock).
smokes(jan).
smokes(suzie).

drinks(john).
drinks(suzie).
drinks(sam).


%40+
oldage(john).
oldage(suzie).
oldage(brock).
oldage(sam).
oldage(ivette).

%21-39
middleage(preston).
middleage(stephanie).
middleage(jan).
middleage(rico).

% under 21
youngage(hannah).
youngage(madison).
youngage(sarah).
youngage(jim).
youngage(omar).

agecompatible(X,Y) :-
    oldage(X),
    oldage(Y), X\=Y |
    middleage(X),
    middleage(Y), X\=Y |
    youngage(X),
    youngage(Y),
    X\=Y.

bothdrink(X,Y):-
    drinks(X),
    drinks(Y),
    X\=Y.

bothsmoke(X,Y) :-
    smokes(X),
    smokes(Y),
    X\=Y.

bothlovecats(X,Y) :-
    likescats(X),
    likescats(Y),
    X\=Y.

bothlovedogs(X,Y) :-
    likesdogs(X),
    likesdogs(Y),
    X\=Y.

bothlikeeachother(X,Y) :-
    likes(X,Y)|
    likes(Y,X),
    X\=Y.

perfectmatch(X,Y) :- commoninterests(X,Y), bothlikeeachother(X,Y).

potentialdate(X,Y) :- commoninterests(X,Y) | bothlikeeachother(X,Y).

