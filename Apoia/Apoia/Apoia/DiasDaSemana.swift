import Foundation

class DiasDaSemana {
    
    let nome: String
    
    init(nome: String){
        self.nome = nome
    }
}
class DiasDao{
    static func getList() -> [DiasDaSemana] {
        return [
            DiasDaSemana(nome: "Segunda-feira"),
            DiasDaSemana(nome: "Terça-feira"),
            DiasDaSemana(nome: "Quarta-feira"),
            DiasDaSemana(nome: "Quinta-feira"),
            DiasDaSemana(nome: "Sexta-feira"),
            DiasDaSemana(nome: "Sábado"),
            DiasDaSemana(nome: "Domingo")
        ]
    }
}
