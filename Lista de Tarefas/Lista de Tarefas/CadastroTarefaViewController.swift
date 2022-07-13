//
//  CadastroTarefaViewController.swift
//  Lista de Tarefas
//
//  Created by Luis Felipe Guimarães Pinto on 17/08/19.
//  Copyright © 2019 Felipe Guimarães. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {

    @IBOutlet weak var tarefaCampo: UITextField!
    @IBAction func adicionarTarefa(_ sender: Any) {
        
        if  let textoDigitado = tarefaCampo.text{
            
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            
            
        }
        tarefaCampo.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
