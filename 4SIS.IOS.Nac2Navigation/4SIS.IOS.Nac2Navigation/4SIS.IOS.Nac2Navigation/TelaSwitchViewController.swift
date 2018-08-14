//
//  TelaSwitchViewController.swift
//  4SIS.IOS.Nac2Navigation
//
//  Created by Usuário Convidado on 14/05/2018.
//  Copyright © 2018 Victor Rodrigues. All rights reserved.
//

import UIKit

class TelaSwitchViewController: UIViewController {

    @IBOutlet weak var meuLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn{
            meuLabel.text = "Sim"
        }else{
            meuLabel.text = "Não"
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
