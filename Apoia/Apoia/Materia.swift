//
//  Materia.swift
//  Apoia
//
//  Created by student on 08/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Materia {
    
    let nome: String

    init(nome: String){
        self.nome = nome
    }
}

class MateriaDao{
    static func getList() -> [Materia] {
        return [
            Materia(nome: "Engenharia de Software"),
            Materia(nome: "Equaçōes Diferenciais"),
            Materia(nome: "Física 1"),
            Materia(nome: "Engenharia de Software"),
            Materia(nome: "Engenharia de Software"),
            Materia(nome: "Engenharia de Software"),
            Materia(nome: "Engenharia de Software"),
            Materia(nome: "Engenharia de Software"),
            Materia(nome: "Engenharia de Software"),
            
        ]
    }
}
