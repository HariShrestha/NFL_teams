% Authors: Prashant Panth and Hari Shrestha
% Class: CS3210
% Assignment: Programming Assignment 03 Expert Syste
% Due Date: 11/20/2020
% Information used from: https://en.wikipedia.org/wiki/National_Football_League


begin :- write('Welcome to this ES about National Football League(NFL) Teams!'), nl,
    write('The program is going to ask you for your favourite team.'), nl,
	write('Please only answer yes or no.'), nl,
    write('Ready?'), nl,
    read(X), (X == no -> write('bye'), nl);
    identify(Team) ->
    	((write('Your team is: '), write(Team), nl,
        write('Is this correct?'),
        read(X), (X == yes ->
            write('Great!'), nl;
            undo_still, write('I belive I guessed it wrong. To try again type in begin.'), nl));
        undo, write('I could not figure that out...'), nl),
    undo_still, write('To try again, please type in begin.'), nl.


% The  National Football League(NFL) Teams to be tested
identify('Denver Broncos')     :- 'Denver Broncos',       !.
identify('Kansas City Chiefs')      :- 'Kansas City Chiefs',        !.
identify('LA Chargers')        :- 'LA Chargers',          !.
identify('Las Vegas Raiders')      :- 'Las Vegas Raiders',        !.
identify('New England Patriots')        :- 'New England Patriots',          !.
identify('Buffalo Bills')  :- 'Buffalo Bills',    !.
identify('New York Giants')    :- 'New York Giants',      !.
identify('New York Jets')        :- 'New York Jets',          !.
identify('Washington Football Team')        :- 'Washington Football Team',          !.
identify('Pittsburgh Steelers')       :- 'Pittsburgh Steelers',         !.
identify('Indianapolis Colts')       :- 'Indianapolis Colts',         !.
identify('Chicago Bears')       :- 'Chicago Bears',         !.
identify('Baltimore Ravens')   :- 'Baltimore Ravens',     !.
identify('Tampa Bay Buccaneers')    :- 'Tampa Bay Buccaneers',      !.
identify('San Francisco 49ers')        :- 'San Francisco 49ers',          !.
identify('Dallas Cowboys')        :- 'Dallas Cowboys',          !.
identify('Philadelphia Eagles')       :- 'Philadelphia Eagles',         !.
identify('Green Bay Packers')      :- 'Green Bay Packers',        !.
identify('New Orleans Saints')        :- 'West Ham United',          !.
identify('Detroit Lions')     :- 'Detroit Lions',       !.
identify(unknown).


% The identification rules for the Teams
'Denver Broncos' :- is_true('has nickname the Orange Crush'),
  is_true('has orange for home colors'),
	is_true('won 3 NFL championships'),
  is_true('has mascot name Thunder'),
	is_true('was created in 1960').

'Kansas City Chiefs' :- is_true('has nickname the Chiefs'),
  is_true('has red for home colors'),
	is_true('won 2 NFL championships'),
  is_true('has mascot name K. C. Wolf'),
	is_true('was created in 1960').

'LA Chargers' :- is_true('has nickname the Flash'),
    is_true('has Powder blue for home colors'),
    is_true('has mascot name Boltman'),
	  is_true('was created in 1960').

'Las Vegas Raiders' :- is_true('has nickname the Death Star'),
    is_true('has silver for home colors'),
    is_true('won 3 NFL championships'),
    is_true('has mascot name Raider Rusher'),
	  is_true('was created in 1960').

'New England Patriots' :- is_true('has nickname The Pats'),
  is_true('has Navyblue for home colors'),
  is_true('won 6 NFL championships'),
  is_true('has mascot name Pat Patriot'),
	is_true('was created in 1960').

'Buffalo Bills' :- is_true('has nickname the Bills'),
  is_true('has Royal Blue for home colors'),
	is_true('was created in 1960'),
	is_true('won 2 NFL championships'),
  is_true('has mascot name Billy Buffalo').


'New York Giants' :- is_true('has nickname the Big Blue'),
    is_true('has Blue for home colors'),
    is_true('won 4 NFL championships'),
	  is_true('was created in 1925').

'New York Jets' :- is_true('has nickname the Gang Green'),
    is_true('has Green for home colors'),
    is_true('won 1 NFL championships'),
	  is_true('was created in 1960').

'Washington Football Team' :- is_true('has nickname the Redskin'),
  is_true('has Burgundy for home colors'),
  is_true('has White for home colors'),
	is_true('was created in 1889'),
  is_true('has mascot name Team Mascot'),
	is_true('won 3 NFL championships').

'Pittsburgh Steelers' :- is_true('has nickname the Stillers'),
    is_true('has Yellow for home colors'),
    is_true('has mascot name Steely McBeam'),
  	is_true('won 6 NFL championships'),
	  is_true('was created in 1933').

'Indianapolis Colts' :- is_true('has nickname the Dolts'),
    is_true('has White for home colors'),
    is_true('has mascot name Blue'),
  	is_true('won 2 NFL championships'),
	  is_true('was created in 1953').

'Chicago Bears' :- is_true('has nickname Da Bears'),
    is_true('has Brunt Orange for home colors'),
    is_true('has mascot name Staley Da Bear'),
	  is_true('was created in 1920'),
  	is_true('won 1 NFL championships').

'Baltimore Ravens' :- is_true('has nickname the Purpple Pain'),
    is_true('has Purple for home colors'),
    is_true('has mascot name Poe'),
    is_true('won 2 NFL championships'),
    is_true('was created in 1996').

'Tampa Bay Buccaneers' :- is_true('has nickname Pewter Pirates'),
    is_true('has Black for home colours'),
    is_true('has mascot name Captain Fear'),
    is_true('won 1 NFL championships'),
	  is_true('was created in 1976').

'San Francisco 49ers' :- is_true('has nickname The Niners'),
    is_true('has Scarlet for home colors'),
    is_true('has mascot name Sourdough Sam'),
    is_true('won 5 NFL championships'),
	  is_true('was created in 1946').

'Dallas Cowboys' :- is_true('has nickname the Big D'),
    is_true('has Navy Blue for home colours'),
    is_true('has mascot name Rowdy'),
    is_true('won 5 NFL championships'),
    is_true('was created in 1960').

'Philadelphia Eagles' :- is_true('has nickname The Iggles'),
    is_true('has Midnight Green for home colours'),
    is_true('has mascot name Swoop'),
    is_true('won 1 NFL championships'),
    is_true('was created in 1933').

'Green Bay Packers' :- is_true('has nickname the Packers'),
    is_true('has Gold for home colors'),
	is_true('has DarkGreen for home colors'),
  is_true('won 4 NFL championships'),
	is_true('was created in 1919').

'New Orleans Saints' :- is_true('has nickname the Night Train'),
    is_true('has Old Gold for home colors'),
    is_true('won 1 NFL championships'),
    is_true('has mascot name Gumbo'),
	is_true('was created in 1967').

'Detroit Lions' :- is_true('has nickname the Silver Crush'),
    is_true('has Honolulu Blue for home colors'),
    is_true('won 4 NFL championships'),
    is_true('has mascot name Roary the Lion'),
	is_true('was created in 1929').

unknown :- write('Hmmmm... I do not have enough information to identify this team.'),
    nl, write('Try again?'),
    read(Again), (Again == no -> write('bye')), undo, fail.


% asking the identification questions
ask(Question) :-
    write('Does the Team have this description: '), write(Question), write('? '),
    read(X), nl, (X == yes -> assert(yes(Question)); assert(no(Question)), fail).
:- dynamic yes/1, no/1.
is_true(Question) :- (yes(Question) -> true ; (no(Question) -> fail ; ask(Question))).


% undo the assertions
undo :- retractall(yes(_)), retractall(no(_)), fail.
undo_still :- retractall(yes(_)), retractall(no(_)).
