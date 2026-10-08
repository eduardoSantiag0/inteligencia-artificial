%  Você tem duas jarras, uma de 4 litros e outra de 3 litros. Nenhuma delas
%  tem qualquer marcação de medidas. Há uma bomba que pode ser usada para encher as jarras com
%  água. Como é que você consegue obter exatamente 2 litros de água?

% Quantidade de agua do Jarro de 4 litros -> X
% Quantidade de agua do Jarro de 3 litros -> Y


% Sintaxe de regra: 
% nome_do_predicado(Argumentos) :-
%     Condicao,
%     Acao.
    % Se jarro X < 2 litros
    %     Encher jarro X


jarros(X, Y). % jarros[X, Y].

verificar_jarro_x(X) :-
    X < 2,
    encher(X, NovaQuantidade),
    jarros(NovaQuantidade, Y).


verificar_jarro_y(Y) :-
    Y < 2


Se jarro X == 2 litros
    Encher jarro Y

Se jarro Y == 2 litros
    sair

Se jarro Y > 2 litros
    Encher X com  Y - 2 litros 


adicionar_1(Atual, NovaQuantidade) :-
    NovaQuantidade is Atual +1

Encher jarro Y
