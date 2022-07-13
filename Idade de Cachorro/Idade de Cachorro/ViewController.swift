//
//  ViewController.swift
//  Idade de Cachorro
//
//  Created by Luis Felipe Guimarães Pinto on 05/08/19.
//  Copyright © 2019 Felipe Guimarães. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBOutlet weak var campoIdadeCachorro: UITextField!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        
        if campoIdadeCachorro.text == "" {
            
            legendaResultado.text = "Favor digitar a idade do cachorro"
        }
        else {
        let idade = Int(campoIdadeCachorro.text!)! * 7
            legendaResultado.text = "A idade do seu cachorro em anos humanos é: " + String(idade) }
        }

    
    @IBAction func limparIdade(_ sender: Any) {
        
        legendaResultado.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

