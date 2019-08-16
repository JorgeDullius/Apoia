//
//  Metodos.swift
//  Apoia
//
//  Created by student on 15/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation


class Metodos{
    var nomeMetodo      : String
    var descricaoMetodo : String
    
    init(nomeMetodo : String , descricaoMetodo: String) {
        self.nomeMetodo = nomeMetodo
        self.descricaoMetodo = descricaoMetodo
    }
}

class MetodosDAO{
    static func getList() -> [Metodos]{
        return [
            Metodos(nomeMetodo: "Mapa Mental", descricaoMetodo: "Mapa mental, ou mapa da mente é o nome dado para um tipo de diagrama, sistematizado pelo psicólogo inglês Tony Buzan, voltado para a gestão de informações, de conhecimento e de capital intelectual; para a compreensão e solução de problemas; na memorização e aprendizado; na criação de manuais, livros e palestras; como ferramenta de brainstorming (tempestade de ideias); e no auxílio da gestão estratégica de uma empresa ou negócio."),
            Metodos(nomeMetodo: "Fichamento", descricaoMetodo: "Conceitualmente, fichamento é um resumo das principais idéias de um texto. É bastante utilizado como técnica de estudo e no processo de revisão da literatura. Nele, são resumidas e destacadas as partes mais importantes do texto com o objetivo de fazer futuras consultas."),
            Metodos(nomeMetodo: "Estudo intercalado", descricaoMetodo: "O estudo intercalado nada mais é do que a distribuição das matérias em um momento próximo de estudo. Pense, por exemplo, que em 3 dias você pode estudar matérias de humanas, exatas e biológicas. Tudo isso sem se cansar e garantindo pleno entendimento!"),
            Metodos(nomeMetodo: "Práticas Distribuidas", descricaoMetodo: "Programar um cronograma de estudos distribuídos ao longo do tempo.Muitos estudantes acham que estudar tudo de uma vez, durante horas seguidas, pode ser eficiente, mas pesquisas indicam que, a longo prazo, deixar tudo pra última hora não funciona. Os especialistas identificam o padrão de “procrastinação” na maioria dos estudantes, por isso, apesar da prática distribuída dos estudos ser muito eficiente, ela quase nunca é usada por conta desse comportamento natural dos alunos, de só estudar quando as provas estão chegando."),
            Metodos(nomeMetodo: "teste prático" , descricaoMetodo: "O teste prático consiste em realizar toneladas de exercícios sobre o assunto estudado e, refazer as questões que ficou com dúvida ou errou a resposta.A maneira mais comum é: resolver listas de exercícios e fazer provas passadas.Ao estudar para um concurso, vestibular, ou, um teste da faculdade/escola temos o costume de utilizar esta prática."),
            Metodos(nomeMetodo: "Pomodoro", descricaoMetodo: "A técnica Pomodoro, desenvolvida em 1988 pelo italiano Francisco Cirillo, é um método de gestão de tempo que pode ser aplicado para diversas tarefas, seja nos estudos, seja no trabalho.")
            ]
    }
}
