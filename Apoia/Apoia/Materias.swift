//
//  Materias.swift
//  Apoia
//
//  Created by student on 15/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

/*class Materia {
 
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
 Materia(nome: "Algoritmos e Programação Orientada a Objetos 1"),
 Materia(nome: "Algoritmos e Programação Orientada a Objetos 2"),
 Materia(nome: "Computação Gráfica"),
 Materia(nome: "Programação para a Web"),
 Materia(nome: "Programação para Dispositivos Móveis"),
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
 */

class Materias {
    
    var nomeMateria: String
    var horasSemanaisEstudo: String
    var nomeLivro: String
    var numeroAprovados: String
    var numeroReprovados: String
    
    init(json: [String: AnyObject]) {
        self.nomeMateria = json["nomeMateria"] as? String ?? ""
        self.horasSemanaisEstudo = json["horasSemanaisEstudo"] as? String ?? ""
        self.nomeLivro = json["nomeLivro"] as? String ?? ""
        self.numeroAprovados = json["numeroAprovados"] as? String ?? ""
        self.numeroReprovados = json["numeroReprovados"] as? String ?? ""
    }
}

class MateriasDAO {
    
    static func getMateria (callback: @escaping ((Materias) -> Void)) {
        
        var materias : [Materias] = [Materias]()
        let endpoint: String = "https://apoia.mybluemix.net/listarMaterias"
        
        guard let url = URL(string: endpoint) else {
            print("Erroooo: Cannot create URL")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            
            if error != nil {
                print("Error = \(String(describing: error))")
                return
            }
            
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            print("responseString = \(String(describing: responseString))")
            
            DispatchQueue.main.async() {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: AnyObject]] {
                        
                        let numeroAleatorio:UInt32 = arc4random_uniform(6)
                        let algumNumero: Int = Int(numeroAleatorio)
                        
                        let materia = Materias(json: json[algumNumero])
                        
                        for materia in json {
                            materias.append(Materias(json: materia))
                            print(materia)
                        }
                        
                        callback(materia)
                        
                    }else {
                        
                        print("fudeuuuu")
                    }
                } catch let error as NSError {
                    print("Error = \(error.localizedDescription)")
                }
            }
            
            
        })
        
        task.resume()
    }
}
