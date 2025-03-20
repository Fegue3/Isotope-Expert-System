%grab banana
action(
          state(centre,box,centre,no),
          grab_banana,
          state(centre,box,centre,yes)).

%climb on top of box
action(
          state(P, floor, P, YesOrNo),
          climb_on_top,
          state(P,box,P,YesOrNo)).

%push the box
action(
          state(P1,floor,P1,YesOrNo),
          push(P1, P2),
          state(P2,floor,P2, YesOrNo)).

%walk

action(
          state(P1, floor, B, YesOrNo),
          walk(P1,P2),
          state(P2,floor, B, YesOrNo)).

%does he get the banana
gets_banana(state(_,_,_,yes)).
gets_banana(StartState) :-
    action(StartState, _Action, EndState), gets_banana(EndState).