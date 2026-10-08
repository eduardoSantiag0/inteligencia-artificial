% list as : [Head | Rest]
passagem(a, b).
passagem(b, c).
passagem(c, d).
passagem(d, a).
passagem(c, e).
passagem(e, f).

Visitados = [].

% Caso base
caminho(Origem, Destino, Visitados):-
    % Chegou no Destino
    % Visitou todos

caminho(Origem, Destino, Visitados):-
    passagem(Origem, Meio),
    
    % Destino está nos visitados
    \+ foi_visitado(Meio, Visitados),
    
    % Ir para o proximo
    adicionar_visitados(Origem, Visitados),
    caminho (Proximo, Destino, Visitados).


% É a cabeça
foi_visitado(Caminho, [Caminho | _ ]).

% Se não é, joga a cabeça fora
foi_visitado (Caminho, [_|TAIL]) :-
    foi_visitado(Caminho, TAIL).


adicionar_visitados(Caminho, Visitados) :- 
    NovosVisitados = [Caminho | Visitados].

