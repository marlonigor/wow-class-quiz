:- module(quiz, [
    iniciar_quiz/0
]).

/*
    Módulo: quiz (Ponto de Entrada Principal)
    Responsabilidade: Orquestrar a execução da aplicação, carregando
    e utilizando os outros módulos (kb, engine, ui).
*/

% Carrega os módulos que compõem nossa aplicação.
:- use_module(kb).
:- use_module(engine).
:- use_module(ui).

% Predicado principal e único ponto de entrada da aplicação.
iniciar_quiz :-
    writeln('--- Bem-vindo ao Quiz de Classes de World of Warcraft! ---'),
    writeln(''),

    % 1. O motor executa o quiz para obter as respostas.
    fazer_perguntas(1, 4, [], ListaDeRespostas),

    % 2. O motor calcula o vencedor a partir das respostas.
    calcula_vencedor(ListaDeRespostas, Vencedor),

    % 3. A base de conhecimento nos dá a classe e a descrição.
    classe_associada(Vencedor, Classe),
    descricao_classe(Classe, Descricao),

    % 4. A interface do usuário mostra o resultado final.
    mostrar_resultado_final(Descricao).