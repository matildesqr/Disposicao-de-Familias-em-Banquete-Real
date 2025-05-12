# Disposi-o-de-Fam-lias-em-Banquete-Real
Practical work in OCaml for the Functional Programming course at the University of Beira Interior

---------------------------------------------------------------------------------------------------------------
Na Idade Média, realizavam-se grandes banquetes onde famílias de diferentes reinos se reuniam para conviver e festejar. A disposição dessas famílias era extremamente importante, pois a mistura de elementos de diferentes reinos ou famílias poderia levar a conflitos internos a meio das festividades e arruinar a festa. Neste sentido, os reis anfitriões pediam aos seus conselheiros que criassem uma disposição que permitisse sentar diferentes famílias nas suas mesas sem gerar conflitos e respeitando a ética da organização dos banquetes.
A disposição das pessoas nestes banquetes obedecia a quatro regras:
-> Uma família deve começar com um homem sentado e terminar com uma mulher;
-> Dentro de cada família pode haver outras familias que também começam com um homem sentado e terminam com uma mulher;
-> As crianças da família podem sentar-se entre cada homem e mulher;
-> Cada família pode ter amas que só podem sentar-se entre as crianças.

É claro que nem sempre era fácil encontrar uma disposição que cumprisse todas as regras, e o rei anfitrião tinha muitas vezes de avaliar a proposta dos seus conselheiros para aprovar ou vetar a disposição familiar apresentada.
Assim, o objetivo deste exercício é desenvolver um programa que avalie a disposição sugerida pelos conselheiros e a aprove se estiver de acordo com as regras de etiqueta do banquete, ou a vete se não estiver.

Por uma questão de simplicidade, receberá a disposição sugerida através de uma string, construída com apenas 4 letras: H (homem), M (mulher), C (criança) e A (ama). O objetivo é, dada a entrada, responder:
-> YES, se a disposição for válida;
-> NO, caso contrário.

Exemplos¶
Considere os seguintes exemplos de entrada e de saída:

Entrada: HCACM
Saída: YES

Justificação da decisão: Temos apenas uma família, começada por um homem e terminada por uma mulher, com uma ama entre duas crianças.

Entrada:HHMHCCMM
Saída:YES

Justificação da decisão: Temos três famílias presentes, duas das quais estão dentro da família maior, com todas a começarem por um homem e a terminarem com uma mulher. A família com crianças, tem as crianças entre o homem e a mulher.

Entrada:HMHHAM
Saída:NO

Justificação da decisão: A disposição é inválida por dois motivos: 1) uma das famílias presentes não tem a mulher sentada e 2) uma das famílas tem a ama sentada sem estarem as crianças presentes.

Limites¶
1 < n < 10_000_000, onde n é o número de caracteres da string de entrada.
