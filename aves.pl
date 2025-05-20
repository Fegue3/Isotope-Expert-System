%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Base de Conhecimento (BC) 'aves.pl'
%% que conjuntamente com 'perito.pl'
%% forma o 'Sistema Pericial aves'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Conhecimento
ave(albatrozLaysan) :-
    familia(albatroz),
    cor(branca).

ave(albatrozPePreto) :-
    familia(albatroz),
    cor(cinzenta).

ave(cisneSibilante) :-
    familia(cisne),
    voz(silvoMusicalAbafado).

ave(cisneCorneteiro) :-
    familia(cisne),
    voz(corneteiroEspalhafatoso).

ave(gansoCanadiano) :-
    familia(ganso),
    estacao(inverno),
    pais(estadosUnidos),
    cabeca(preta),
    face(branca).

ave(gansoCanadiano) :-
    familia(ganso),
    estacao(verao),
    pais(canada),
    cabeca(preta),
    face(branca).

ave(patoBravo) :-
    familia(pato),
    voz(grasno),
    cabeca(verde).

ave(patoBravo) :-
    familia(pato),
    voz(grasno),
    cabeca(manchasCastanhas).

ordem(bicoTubular) :-
    narinas(tubularExterna),
    vive(mar),
    bico(curvo).

ordem(aquatico) :-
    patas(membranaInterdigital),
    bico(espalmado).

familia(albatroz) :-
    ordem(bicoTubular),
    dimensao(grande),
    asas(longaEstreita).

familia(cisne) :-
    ordem(bicoTubular),
    pescoco(comprido),
    cor(branca),
    voo(lento).

%% Predicados questionáveis
cor(X) :- questiona(cor,X).
voz(X) :- questiona(voz,X,[silvoMusicalAbafado,corneteiroEspalhafatoso,grasno]).
estacao(X) :- questiona(estacao,X,[inverno,primavera,verao,outono]).
pais(X) :- questiona(pais,X).
cabeca(X) :- questiona(cabeca,X).
face(X) :- questiona(face,X).
narinas(X) :- questiona(narinas,X).
vive(X) :- questiona(vive,X).
bico(X) :- questiona(bico,X).
patas(X) :- questiona(patas,X).
dimensao(X) :- questiona(dimensao,X,[grande,pequena,media]).
asas(X) :- questiona(asas,X).
pescoco(X) :- questiona(pescoco,X).
voo(X) :- questiona(voo,X).

%% Objectivo do sistema
objectivo(X) :- ave(X).
