:- module(kb, [
    pergunta/2,
    opcao/3,
    classe_associada/2,
    descricao_classe/2,
    resposta_valida/1
]).

/*
    Módulo: kb (Knowledge Base)
    Responsabilidade: Armazenar todos os fatos e dados estáticos do quiz.
    Funciona como o "banco de dados" da nossa aplicação.
*/

% --- Base de Conhecimento: Perguntas e Opções ---

% ========= BLOCO DE PERGUNTAS =========
pergunta(1, 'Num grupo de aventura, qual seria sua funcao ideal?').
pergunta(2, 'Qual dessas armas/poderes te atrai mais?').
pergunta(3, 'Qual dessas frases combina mais com voce?').
pergunta(4, 'Se voce fosse enfrentar um monstro gigantesco, como faria?').

% ========= BLOCO DE OPÇÕES =========
opcao(1, a, 'Liderar e encarar os inimigos de frente.').
opcao(1, b, 'Usar inteligencia e magia pra controlar a luta.').
opcao(1, c, 'Atacar de longe, sempre calculando cada disparo.').
opcao(1, d, 'Agir nas sombras, pegando o inimigo desprevenido.').

opcao(2, a, 'Espadas e machados pesados.').
opcao(2, b, 'Feiticos de fogo, gelo ou arcano.').
opcao(2, c, 'Arco, besta ou um animal companheiro.').
opcao(2, d, 'Adagas rapidas e veneno mortal.').

opcao(3, a, 'Nada de enrolacao, eu vou na frente!').
opcao(3, b, 'Conhecimento eh poder.').
opcao(3, c, 'Paciencia e precisao sempre vencem.').
opcao(3, d, 'Ninguem me ve chegando ate ser tarde demais.').

opcao(4, a, 'Avançaria de peito aberto e atacaria sem medo.').
opcao(4, b, 'Lancaria magias poderosas pra controlar ou destruir.').
opcao(4, c, 'Manteria distancia, analisando o ponto fraco antes de atacar.').
opcao(4, d, 'Me esgueiraria e atacaria no ponto vital sem ser notado.').

% --- Base de Conhecimento: Classes e Respostas Válidas ---

classe_associada(a, guerreiro).
classe_associada(b, mago).
classe_associada(c, cacador).
classe_associada(d, ladino).

descricao_classe(guerreiro, 'GUERREIRO: Voce eh destemido e gosta de estar na linha de frente. Um tanque nato que resolve as coisas na forca bruta.').
descricao_classe(mago, 'MAGO: Sua mente eh sua maior arma. Voce prefere usar magias devastadoras e vencer com inteligencia.').
descricao_classe(cacador, 'CACADOR: Voce eh estrategico e paciente. Prefere lutar a distancia, confiando em precisao e ate em animais companheiros.').
descricao_classe(ladino, 'LADINO: Voce eh agil, sorrateiro e letal. Prefere vencer com astucia, ataques rapidos e o elemento surpresa.').

resposta_valida(a).
resposta_valida(b).
resposta_valida(c).
resposta_valida(d).