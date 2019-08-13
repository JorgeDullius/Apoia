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
            Materia(nome: "Física 2"),
            Materia(nome: "Física 3"),
            Materia(nome: "Fundamentos de Teoria da Computação"),
            Materia(nome: "Cálculo 1"),
            Materia(nome: "Cálculo 2"),
            Materia(nome: "Cálculo 3"),
            Materia(nome: "Algoritmos e Programaçäo 1"),
            Materia(nome: "Algoritmos e Programaçäo 2"),
            Materia(nome: "Álgebra Linear"),
            Materia(nome: "Algoritmos e Programaçäo Orientada a Objetos 1"),
            Materia(nome: "Algoritmos e Programaçäo Orientada a Objetos 2"),
            Materia(nome: "Computação Gráfica"),
            Materia(nome: "Programação para a Web"),
            Materia(nome: "Programação para Dispositivos Moveis"),
            Materia(nome: "Sistemas Digitais"),
            Materia(nome: "Arquitetura de Computadores 1"),
            Materia(nome: "Arquitetura de Computadores 2"),
            Materia(nome: "Redes de Computadores"),
            Materia(nome: "Vetores e Geometria Analítica"),
            Materia(nome: "Linguagens Formais e Autômatos"),
            Materia(nome: "Estrutura de Dados e Programação"),
            Materia(nome: "Sistemas Operacionais"),
            Materia(nome: "Banco de Dados")
        ]
    }
}
