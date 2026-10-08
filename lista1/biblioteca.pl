% livro(Titulo, QuantidadeDisponivel).
livro(dom_casmurro, 3).
livro(o_cortico, 0).
livro(1984, 2).
livro(duna, 1).
livro(fundacao, 0).

% usuario(Nome, EmprestimosAtivos).
usuario(ana, 1).
usuario(bruno, 3).
usuario(carlos, 0).
usuario(diana, 2).

% emprestimo(Usuario, Livro).
emprestimo(ana, duna).
emprestimo(bruno, 1984).
emprestimo(bruno, dom_casmurro).
emprestimo(bruno, o_cortico).
emprestimo(diana, fundacao).
emprestimo(diana, dom_casmurro).

% - disponivel(Livro) — verdadeiro quando existe ao menos um exemplar disponível.
disponivel(Livro) :-
    livro(Livro, X),
    X >= 1.

% - pode_emprestar(Usuario, Livro) — verdadeiro quando o usuário possui menos de 3 empréstimos ativos e o livro está disponível.
pode_emprestar(Usuario, Livro) :-
    disponivel(Livro),
    usuario(Usuario, Y),
    Y < 3.


% - emprestou(Usuario, Livro) — verdadeiro quando o usuário possui um empréstimo registrado daquele livro.
emprestou(Usuario, Livro):- 
    emprestimo(Usuario, Livro).

% - pode_renovar(Usuario, Livro) — verdadeiro quando o usuário já pegou aquele livro emprestado e não há outro usuário com empréstimo registrado do mesmo livro.
pode_renovar(Usuario, Livro) :-
    emprestimo(Usuario, Livro),
    \+(
        emprestimo(OutroUsuario, Livro), 
        OutroUsuario \= Usuario,
    )