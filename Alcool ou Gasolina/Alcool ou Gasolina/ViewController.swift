//
//  ViewController.swift
//  Alcool ou Gasolina
//
//  Created by Luis Felipe Guimarães Pinto on 08/08/19.
//  Copyright © 2019 Felipe Guimarães. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Referenciando itens da Main StoryBoard
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBOutlet weak var campoPrecoAlcool: UITextField!
    
    @IBOutlet weak var campoPrecoGasolina: UITextField!
    
    //Formula de calculo do melhor combustivel
    @IBAction func calcularCombustivel(_ sender: Any) {
        
        //Armazenamento dos dados digitados em variaveis
        if let precoAlcool = campoPrecoAlcool.text, let precoGasolina = campoPrecoGasolina.text{
        
            //Valida se todos os dados foram preenchidos atravez das variaveis utilizando a função validarCampos
            let resultado = self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                if resultado == true {
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                }
                else{
                legendaResultado.text = "Favor digitar os campos Preço do Alcool e Preço da Gasolina para calcular"
                }
        }
        
    }
    
    //Funções da aplicação
    
    var consumoCarro = 0.69 /* Consumo do Ford KA 2018 1.0 */
    
    //Realiza o calculo para definir o melhor combustivel
    func calcularMelhorPreco(precoAlcool: String, precoGasolina: String){
        //Valida tipo do dado convertendo os mesmos para numero decimal
        if let valorAlcool = Double(precoAlcool), let valorGasolina = Double(precoGasolina){
            //Formula matematica
            let resultadoPreco = valorAlcool / valorGasolina
                if resultadoPreco > consumoCarro {
                    self.legendaResultado.text = "Melhor utilizar Gasolina!"
                }
                else{
                    self.legendaResultado.text = "Melhor utilizar Alcool!"
                }
        }
        else {
            legendaResultado.text = "Valor digitado invalido"
        }
    }
    
    //Realiza uma validação nos campos para garantir que todos foram preenchidos
    func validarCampos(precoAlcool: String, precoGasolina: String) -> Bool{
        
        var camposValidados = true
        
        if precoAlcool.isEmpty || precoGasolina.isEmpty{
            camposValidados = false
        }
        
        return camposValidados
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

