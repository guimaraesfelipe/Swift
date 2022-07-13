import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configurar signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Cancer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sargitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //configurar significados
        significadoSignos.append("Menssagem Áries")
        significadoSignos.append("Menssagem Touro")
        significadoSignos.append("Menssagem Gêmeos")
        significadoSignos.append("Menssagem Cancer")
        significadoSignos.append("Menssagem Leão")
        significadoSignos.append("Menssagem Virgem")
        significadoSignos.append("Menssagem Libra")
        significadoSignos.append("Menssagem Escorpião")
        significadoSignos.append("Menssagem Sargitário")
        significadoSignos.append("Menssagem Capricórnio")
        significadoSignos.append("Menssagem Aquário")
        significadoSignos.append("Menssagem Peixes")
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do Signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController , animated: true , completion: nil)
        
    }

}

