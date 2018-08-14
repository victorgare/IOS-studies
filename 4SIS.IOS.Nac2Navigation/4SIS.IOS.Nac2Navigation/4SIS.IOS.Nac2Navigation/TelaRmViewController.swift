//
//  TelaRmViewController.swift
//  4SIS.IOS.Nac2Navigation
//
//  Created by Usuário Convidado on 14/05/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

import UIKit

class TelaRmViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func abrirTelaNota(_ sender: Any) {
        performSegue(withIdentifier: "TelaRmParaTelaNotaSegue", sender: nil)
    }
    
    @IBAction func msg(_ sender: Any) {
        let alert = UIAlertController(
            title: "Aviso",
            message: "Olá",
            preferredStyle: UIAlertControllerStyle.alert
        )
        
        alert.addAction(UIAlertAction(
            title: "Ok",
            style: UIAlertActionStyle.default,
            handler: nil))
    }
    
}
