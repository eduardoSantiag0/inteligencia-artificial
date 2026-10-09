%  Você tem duas jarras, uma de 4 litros e outra de 3 litros. Nenhuma delas
%  tem qualquer marcação de medidas. Há uma bomba que pode ser usada para encher as jarras com
%  água. Como é que você consegue obter exatamente 2 litros de água?

% Quantidade de agua do Jarro de 4 litros -> X
% Quantidade de agua do Jarro de 3 litros -> Y


% Encher completamente X.
% Encher completamente Y.
% Esvaziar X.
% Esvaziar Y.
% Transferir água de X para Y, até X esvaziar ou Y encher.
% Transferir água de Y para X, até Y esvaziar ou X encher.


capacidades([4, 3]).

objetivo(2, _).
objetivo(_, 2).

