// Eaii galerinha da noite bjaaooo
//  ViewController.swift
//  Apoia
//
//  Created by student on 08/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {
    
    //URL to our web service
    let URL_STR: URL = URL(string: "https://apoia.mybluemix.net/cadastrarDados")!
    
    @IBOutlet weak var livroUITextField: UITextField!
    
    @IBOutlet weak var aprovacaoUISegmentedControl:UISegmentedControl!
    @IBOutlet weak var indiceUISegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var horasUITextField: UITextField!
   
    @IBOutlet weak var comentarioUITextField: UITextField!
    
    @IBAction func buttonSalvar(_ sender: Any) {
        
        //creating URLRequest
        var request = URLRequest(url: URL_STR)
        
        //setting the method to post
        request.httpMethod = "POST"
        
        //getting values from text fields
        let nomeLivro = livroUITextField.text
        let mediaHoras = horasUITextField.text
        let comentario = comentarioUITextField.text
        
        //creating the post parameter by concatenating the keys and values from text field
        let postData = "livro="+(nomeLivro)! + "&mediaHoras=" + (mediaHoras)! + "&comentario="+(comentario)!;
        
        //adding the parameters to request body
        request.httpBody = postData.data(using: String.Encoding.utf8)
        //creating a task to send the post request
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in
            if error != nil{
                print("error is \(String(describing: error))")
                return; }
            do {
                let myJSON = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary
                if myJSON != nil {
                    //let messsg: String!
                    //msg = parseJSON["message"] as! String?
                    //print(messsg)
                }
            } catch {
                print(error)
            }
        }
        
        //executing the task
        task.resume()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

