//
//  DadosDasMaterias.swift
//  Apoia
//
//  Created by student on 12/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

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
