//
//  ListaTableViewController.swift
//  4SIS.IOS.JsonTable
//
//  Created by Usuário Convidado on 08/10/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

import UIKit

class ListaTableViewController: UITableViewController {

    
    var aplicativoArray = [Aplicativo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let urlApi = "https://randomuser.me/api/?results=20"
        
        if let url = URL(string: urlApi){
            let task = session.dataTask(with: url) { (data, response, error) in
                //todo código aqui será executado quando a execução da task se completa
                if error != nil {
                    print("O erro é: \(error!)")
                    return
                }else if let jsonData = data{
                    do{
                        let parsedJSON = try JSONSerialization.jsonObject(with: jsonData) as! [String:Any]
                        print(parsedJSON)
                        
                        guard let resultados = parsedJSON["results"] as? [[String:Any]] else { return }
                        
                        for resultado in resultados{
                            let objApp = Aplicativo()
                            guard let fullname = resultado["name"] as? [String:Any] else { return }
                            guard let firstName = fullname["first"] as? String else { return }
                            
                            guard let location = resultado["location"] as? [String:Any] else { return }
                            guard let cidade = location["city"] as? String  else { return }
                            guard let rua = location["street"] as? String else { return }
                            
                            guard let genero = resultado["gender"] as? String else { return }
                            
                            objApp.nome = firstName
                            objApp.cidade = cidade
                            objApp.rua = rua
                            objApp.genero = genero
                            
                            self.aplicativoArray.append(objApp)
                        }
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                        
                    }catch{
                        print("Error no Parser: \(error)")
                    }
                }
            }
            //disparo da execução da task
            task.resume()
        }
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
        return aplicativoArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = aplicativoArray[indexPath.row].nome + " - Genero: " + aplicativoArray[indexPath.row].genero
        cell.detailTextLabel?.text = aplicativoArray[indexPath.row].rua
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

}
