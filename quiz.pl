% --- Lógica de Interação e Fluxo do Quiz ---

% Fatos para as perguntas e suas respectivas opções.
% Formato: pergunta(ID, TextoDaPergunta).
pergunta(1, 'Num grupo de aventura, qual seria sua funcao ideal?').
opcao(1, a, 'Liderar e encarar os inimigos de frente.').
opcao(1, b, 'Usar inteligencia e magia pra controlar a luta.').
opcao(1, c, 'Atacar de longe, sempre calculando cada disparo.').
opcao(1, d, 'Agir nas sombras, pegando o inimigo desprevenido.').

pergunta(2, 'Qual dessas armas/poderes te atrai mais?').
opcao(2, a, 'Espadas e machados pesados.').
opcao(2, b, 'Feiticos de fogo, gelo ou arcano.').
opcao(2, c, 'Arco, besta ou um animal companheiro.').
opcao(2, d, 'Adagas rapidas e veneno mortal.').

pergunta(3, 'Qual dessas frases combina mais com voce?').
opcao(3, a, 'Nada de enrolacao, eu vou na frente!').
opcao(3, b, 'Conhecimento eh poder.').
opcao(3, c, 'Paciencia e precisao sempre vencem.').
opcao(3, d, 'Ninguem me ve chegando ate ser tarde demais.').

pergunta(4, 'Se voce fosse enfrentar um monstro gigantesco, como faria?').
opcao(4, a, 'Avançaria de peito aberto e atacaria sem medo.').
opcao(4, b, 'Lancaria magias poderosas pra controlar ou destruir.').
opcao(4, c, 'Manteria distancia, analisando o ponto fraco antes de atacar.').
opcao(4, d, 'Me esgueiraria e atacaria no ponto vital sem ser notado.').

% Predicado principal que inicia o quiz.
% Para executar, voce consultara este arquivo e chamara "iniciar_quiz."
iniciar_quiz :-
    apresentar_pergunta(1),
    write('Sua resposta: '),
    read(Resposta),
    format('Voce respondeu: ~w~n', [Resposta]).

% Predicado auxiliar que, dado um ID, mostra a pergunta e suas opcoes.
apresentar_pergunta(ID) :-
    pergunta(ID, TextoPergunta),
    writeln(TextoPergunta),
    writeln(''), % Adiciona uma linha em branco para legibilidade.
    % forall/2 eh um predicado que executa uma acao para cada solucao encontrada.
    % Aqui, para cada 'opcao' encontrada para o ID, ele a imprime formatada.
    forall(opcao(ID, Letra, TextoOpcao),
           format('~w) ~w~n', [Letra, TextoOpcao])).


% --- Base de Conhecimento: Classes e Descrições ---
% Fatos que associam cada letra de resposta a uma classe principal.
% Formato: classe_associada(Letra, NomeDaClasse).
classe_associada(a, guerreiro).
classe_associada(b, mago).
classe_associada(c, cacador).
classe_associada(d, ladino).

% Fatos que descrevem cada classe (o resultado final do quiz).
% Formato: descricao_classe(NomeDaClasse, TextoDescritivo).
descricao_classe(guerreiro, 'GUERREIRO: Voce eh destemido e gosta de estar na linha de frente. Um tanque nato que resolve as coisas na forca bruta.').
descricao_classe(mago, 'MAGO: Sua mente eh sua maior arma. Voce prefere usar magias devastadoras e vencer com inteligencia.').
descricao_classe(cacador, 'CACADOR: Voce eh estrategico e paciente. Prefere lutar a distancia, confiando em precisao e ate em animais companheiros.').
descricao_classe(ladino, 'LADINO: Voce eh agil, sorrateiro e letal. Prefere vencer com astucia, ataques rapidos e o elemento surpresa.').
