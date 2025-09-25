:- module(engine, [
    fazer_perguntas/4,
    calcula_vencedor/2
]).

/*
    Módulo: engine
    Responsabilidade: Orquestrar o fluxo do quiz e processar os dados para
    determinar um resultado. É a "lógica de negócio" da aplicação.
*/

:- use_module(ui). % O motor precisa da UI para exibir perguntas e obter respostas.

% Predicado recursivo que executa o quiz.
fazer_perguntas(ID_Atual, ID_Final, RespostasAcumuladas, ListaDeRespostasFinal) :-
    ID_Atual > ID_Final,
    !,
    reverse(RespostasAcumuladas, ListaDeRespostasFinal).

fazer_perguntas(ID_Atual, ID_Final, RespostasAcumuladas, ListaDeRespostasFinal) :-
    apresentar_pergunta(ID_Atual),         % <-- Delega para a UI
    obter_resposta_valida(Resposta),      % <-- Delega para a UI
    ProximoID is ID_Atual + 1,
    fazer_perguntas(ProximoID, ID_Final, [Resposta | RespostasAcumuladas], ListaDeRespostasFinal).


% Predicado que encontra o item mais frequente (o vencedor) em uma lista.
calcula_vencedor(Lista, Vencedor) :-
    msort(Lista, ListaOrdenada),
    empacota(ListaOrdenada, Pacotes),
    maior_pacote(Pacotes, Maior),
    Maior = [Vencedor|_].

% --- Predicados "privados" de ajuda para calcula_vencedor/2 ---

% Agrupa elementos iguais e adjacentes em sub-listas.
empacota([], []).
empacota([X|Xs], [Grupo|Grupos]) :-
    separa_iguais(X, Xs, Iguais, Resto),
    Grupo = [X|Iguais],
    empacota(Resto, Grupos).

separa_iguais(_, [], [], []).
separa_iguais(X, [Y|Ys], [], [Y|Ys]) :- X \= Y.
separa_iguais(X, [X|Xs], [X|Iguais], Resto) :- separa_iguais(X, Xs, Iguais, Resto).

% Encontra a sub-lista (pacote) de maior comprimento.
maior_pacote([Primeiro|Resto], Maior) :-
    maior_pacote(Resto, Primeiro, Maior).
maior_pacote([], Maior, Maior).
maior_pacote([Pacote|Resto], Acc, Maior) :-
    length(Pacote, TamPacote),
    length(Acc, TamAcc),
    ( TamPacote > TamAcc -> NovoAcc = Pacote ; NovoAcc = Acc ),
    maior_pacote(Resto, NovoAcc, Maior).