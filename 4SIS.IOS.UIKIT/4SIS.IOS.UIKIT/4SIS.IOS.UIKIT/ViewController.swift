//
//  ViewController.swift
//  4SIS.IOS.UIKIT
//
//  Created by Usuário Convidado on 09/04/2018.
//  Copyright © 2018 Victor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var meuSegmento: UISegmentedControl!
    @IBOutlet weak var meuStepper: UIStepper!
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var lblKm: UILabel!
    @IBOutlet weak var lblSms: UILabel!
    
    @IBAction func indexChanged(_ sender: Any) {
        switch meuSegmento.selectedSegmentIndex {
        case 0:
            print("Você selecionou o 1º botaão")
            break
        case 1:
            print("Você selecionou o 2º botaão")
            break
        case 2:
            print("Você selecionou o \(String(describing: meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)))")
            break
        default:
            print("")
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblAno.text = String(Int(meuStepper.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        lblAno.text = "1980"
        lblKm.text = "7500"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

