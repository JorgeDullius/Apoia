//
//  AgendaViewController.swift
//  Apoia
//
//  Created by student on 09/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class AgendaViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    
 
    
    @IBOutlet weak var primeiroDado: UILabel!
    @IBOutlet weak var segundoDado: UILabel!
    @IBOutlet weak var terceiroDado: UILabel!
    @IBOutlet weak var quartoDado: UILabel!
    @IBOutlet weak var quintoDado: UILabel!
    
    @IBOutlet weak var myPickerView: UIPickerView!
    var pickerData = ["Segunda" , "Terça" , "Quarta" , "Quinta", "Sexta", "Sabado", "Domindo"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.delegate = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    /*func pickerView( pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }*/
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
