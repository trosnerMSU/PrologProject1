%

%Drink declarations
drinks(beer).
drinks(soda).
drinks(milk).
drinks(water).
drinks(juice).
drinks(tea).
drinks(coffee).

%Starches
starch(bread).
starch(rice).
starch(pasta).
starch(beans).

%Proteins
protein(eggs).
protein(almonds).
protein(chickenbreasts).
protein(oats).
protein(yogurt).

%Snacks
snack(popcorn).
snack(nachos).
snack(cheetos).
snack(pringles).
snack(frenchfries).

%Desserts
dessert(applepie).
dessert(icecream).
dessert(fudge).
dessert(cheesecake).
dessert(funnelcake).

%Fruits
fruit(oranges).
fruit(pineapple).
fruit(apple).
fruit(apricots).
fruit(grapefruit).

%Veggies
veggies(peas).
veggies(cucumbers).
veggies(celery).
veggies(cabbage).
veggies(spinach).

%breakfast
breakfastprotein(eggs) :- protein(eggs).
breakfastprotein(almonds) :- protein(almonds).
breakfastprotein(oats) :- protein(oats).
breakfastprotein(yogurt) :- protein(yogurt).

breakfastfruit(F) :- fruit(F).

breakfaststarch(bread) :- starch(bread).
breakfaststarch(rice) :- starch(rice).

breakfastdrink(milk) :- drinks(milk).
breakfastdrink(juice) :- drinks(juice).
breakfastdrink(coffee) :- drinks(coffee).
breakfastdrink(tea) :- drinks(tea).
breakfastdrink(water) :- drinks(water).

%Dinner & Lunch
dinnerlunchfruit(F) :- fruit(F).

dinnerlunchprotein(almonds) :- protein(almonds).
dinnerlunchprotein(chickenbreasts) :- protein(chickenbreasts).
dinnerlunchprotein(yogurt) :- protein(yogurt).

dinnerlunchveggies(V) :- veggies(V).

dinnerlunchstarches(S) :- starch(S).

dinnerlunchdrink(beer) :- drinks(beer).
dinnerlunchdrink(soda) :- drinks(soda).
dinnerlunchdrink(milk) :- drinks(milk).
dinnerlunchdrink(water) :- drinks(water).
dinnerlunchdrink(juice) :- drinks(juice).



%Cases
breakfast(F, P, S, D) :-
    breakfastfruit(F),
    breakfastprotein(P),
    breakfaststarch(S),
    breakfastdrink(D).

dinnerlunch(F, P, V, S, D) :-
    dinnerlunchfruit(F),
    dinnerlunchprotein(P),
    dinnerlunchveggies(V),
    dinnerlunchstarches(S),
    dinnerlunchdrink(D).

dessertmeal(D,S):-
    dessert(D),
    snack(S).


