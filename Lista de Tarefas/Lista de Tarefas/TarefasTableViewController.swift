//
//  TarefasTableViewController.swift
//  Lista de Tarefas
//
//  Created by Luis Felipe Guimarães Pinto on 17/08/19.
//  Copyright © 2019 Felipe Guimarães. All rights reserved.
//

import UIKit

class TarefasTableViewController: UITableViewController {

    var tarefas: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        atualizarListaTarefas()
    }

    //Configuração da TableView

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefas.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        celula.textLabel?.text = tarefas[indexPath.row]

        return celula
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete{
            let tarefa = TarefaUserDefaults()
            tarefa.remover(indice: indexPath.row)
            atualizarListaTarefas()
        }
        
    }
    func atualizarListaTarefas(){
        let tarefa = TarefaUserDefaults()
        tarefas = tarefa.listar()
        tableView.reloadData()
    }
    
}
