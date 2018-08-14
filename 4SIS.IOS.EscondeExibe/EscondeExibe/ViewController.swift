//
//  ViewController.swift
//  EscondeExibe
//
//  Created by Usuário Convidado on 26/02/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnOcultar(_ sender: Any) {
        minhaView.alpha = 0;
    }
    @IBAction func btnExibir(_ sender: Any) {
        minhaView.alpha = 1;
    }
    @IBOutlet weak var minhaView: UIView!
}

