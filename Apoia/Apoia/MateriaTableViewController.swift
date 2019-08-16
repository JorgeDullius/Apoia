//
//  MateriasTableViewController.swift
//  Apoia
//
//  Created by student on 08/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class MateriaTableViewController: UITableViewController {
    
    
    var materias = [Materias]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MateriasDAO.getMateria{
            (materiasList) in
            for materia in materiasList{
                self.materias.append(materia)
                self.tableView.reloadData()
            }
        }
        //.sorted(by: { $0.nomeMateria < $1.nomeMateria })
        
        /*
         MateriasDao.getMateria { (materia) in
         self.nomeLabel.text = String(describing: materia.nomeMateria).sorted(by: { $0.nomeMateria < $1.nomeMateria })
         }
         */
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return materias.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MateriaCell", for: indexPath)
        
        // Configure the cell...
        if let materiaCell = cell as? MateriaTableViewCell{
            let materia = materias[indexPath.row]
            materiaCell.nomeLabel.text = materia.nomeMateria
            
            return materiaCell
        }
        
        
        return cell
    }
    
}


    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


