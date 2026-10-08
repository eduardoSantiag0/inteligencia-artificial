% Uma loja possui produtos com diferentes quantidades em estoque. Você deve criar um programa em Prolog que permita consultar a disponibilidade dos produtos.

% produto(Nome, Quantidade).

produto(arroz, 10).
produto(feijao, 5).
produto(macarrao, 0).
produto(leite, 3).
produto(cafe, 0).

% disponivel(Produto) — verdadeiro quando o produto possui quantidade maior que zero.
% esgotado(Produto) — verdadeiro quando a quantidade é igual a zero.
% estoque_baixo(Produto) — verdadeiro quando a quantidade é maior que zero, mas menor que 5.

disponivel(Produto) :-
    produto(Produto, X),
    X > 0.

esgotado(Produto) :-
    produto(Produto, X),
    X = 0.


estoque_baixo(Produto) :-
    produto(Produto, X),
    X > 0  ,
    X < 5.
