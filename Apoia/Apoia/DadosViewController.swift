
//
//  ViewController.swift
//  Apoia
//
//  Created by student on 08/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class DadosViewController: UIViewController {
    
    
    
    
    
    
    
    @IBOutlet weak var nomeDaMateriaText: UITextView!
    
    @IBOutlet weak var porcentagemView: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var horasSemanaisLabel: UILabel!
    
    @IBOutlet weak var nomeLivroText: UITextView!
    
    
    //var materia = [Materias]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        progressView.setProgress(0.0, animated: true)
        porcentagemView.text = "0.0%"
        
        //materia = MateriasDAO.getList()
        
        MateriasDAO.getMateria { (materia) in
            self.horasSemanaisLabel.text = String(describing: materia.horasSemanaisEstudo)
            self.nomeDaMateriaText.text = String(describing: materia.nomeMateria)
            self.nomeLivroText.text = String(describing: materia.nomeLivro)
            
            let porcentagemAprovacao = Float(materia.numeroAprovados)! / (Float(materia.numeroAprovados)! + Float(materia.numeroReprovados)!)
            
            self.porcentagemView.text = "\(porcentagemAprovacao * 100)%"
            self.progressView.setProgress(porcentagemAprovacao, animated: true)
        }
    }
    
    /*@IBAction func progressButton(_ sender: Any) {
     
     let numeroAleatorio:UInt32 = arc4random_uniform(6)
     let algumNumero: Int = Int(numeroAleatorio)
     
     nomeDaMateriaText.text = "\(materia[algumNumero].nomeMateria)"
     horasSemanaisLabel.text = "\(materia[algumNumero].horasSemanais)"
     nomeLivroText.text = "\(materia[algumNumero].livroUtilizado)"
     porcentagemView.text = "\(materia[algumNumero].porcentagemAprovacao)"
     
     progressView.setProgress(materia[algumNumero].porcentagemAprovacao, animated: true)
     porcentagemView.text = "\(materia[algumNumero].porcentagemAprovacao * 100)%"
     }*/
}


