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