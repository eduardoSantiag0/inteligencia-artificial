% estrada(Origem, Destino).

estrada(a, b).
estrada(a, d).
estrada(b, c).
estrada(c, e).
estrada(d, e).

% Verdadeiro quando existe uma estrada direta de X para Y.
conectado(X, Y):-
    estrada(X, Y).

% Verdadeiro quando é possível chegar de X até Y, mesmo que seja necessário passar por outras cidades.

% Caso base
caminho(X, Y) :-
    conectado(X, Y).

caminho(X, Y) :-
    estrada(X, Meio),
    caminho(Meio, Y).
