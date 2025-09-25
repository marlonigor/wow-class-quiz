:- module(ui, [
    apresentar_pergunta/1,
    obter_resposta_valida/1,
    mostrar_resultado_final/1
]).

/*
    Módulo: ui (User Interface)
    Responsabilidade: Controlar toda a entrada e saída de dados no console.
    É a "camada de apresentação" da nossa aplicação.
*/

:- use_module(kb). % A UI precisa "importar" a KB para saber quais perguntas e opções existem.

% Predicado que, dado um ID, mostra a pergunta e suas opcoes.
apresentar_pergunta(ID) :-
    pergunta(ID, TextoPergunta), % <-- Consulta um fato do módulo kb
    writeln(TextoPergunta),
    writeln(''),
    forall(opcao(ID, Letra, TextoOpcao), % <-- Consulta fatos do módulo kb
           format('~w) ~w~n', [Letra, TextoOpcao])).

% Predicado que cria um loop para garantir a obtencao de uma resposta valida.
obter_resposta_valida(Resposta) :-
    write('Sua resposta: '),
    read(Tentativa),
    (   resposta_valida(Tentativa) % <-- Consulta um fato do módulo kb
    ->  Resposta = Tentativa
    ;   writeln(''),
        writeln('>> Resposta invalida! Por favor, responda com a, b, c ou d (seguido de ponto).'),
        obter_resposta_valida(Resposta)
    ).

% Predicado que recebe a string de descrição e a exibe formatada.
% Note como ele não tem nenhuma lógica de cálculo, apenas de exibição.
mostrar_resultado_final(Descricao) :-
    writeln(''),
    writeln('------------------------------------------'),
    writeln('      RESULTADO DO SEU QUIZ:'),
    writeln('------------------------------------------'),
    writeln(Descricao).