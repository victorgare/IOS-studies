//
//  ViewController.swift
//  4SIS.IOS.TableView
//
//  Created by Usuário Convidado on 06/08/2018.
//  Copyright © 2018 Victor. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var minhaTabela: UITableView!
    
    let animal = ["Girafa", "Rinoceronte", "Leão", "Urso", "Elefante"]
    let imagens = ["girafa", "rino", "leao", "urso","ele"]
    let imagens2 = [#imageLiteral(resourceName: "girafa"), #imageLiteral(resourceName: "rino"), #imageLiteral(resourceName: "leao"), #imageLiteral(resourceName: "urso"), #imageLiteral(resourceName: "ele")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
            
        celula.textLabel?.text = animal[indexPath.row];
        
        // as duas maneiras abaixo estao corretas
        //celula.imageView?.image = UIImage(named: imagens[indexPath.row])
        celula.imageView?.image = imagens2[indexPath.row]
        return celula
    }
    
    // os proximos metodos pertencem ao protocolo delegate
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70;
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let roda = UIImageView(image: UIImage(named: "rodape.png"))
        return roda
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cabec = UIImageView(image: UIImage(named: "cabecalho"))
        return cabec
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let msg = "Você clicou no animao \(animal[indexPath.row])"
        
        let alerta = UIAlertController(title: "Aviso",
                                       message: msg,
                                       preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(
            title: "Ok",
            style: UIAlertActionStyle.default,
            handler: { (action) in
                tableView.deselectRow(at: indexPath, animated: true)
        }))
        
        present(alerta, animated: true)
    }

}

