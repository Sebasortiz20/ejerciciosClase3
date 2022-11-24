

import UIKit

class FirstViewController: UIViewController {
    
    // Outlets:
    
    @IBOutlet weak var contadorLabel: UILabel!
    @IBOutlet weak var siguienteButton: UIButton!
    
    var contador = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
     // caracteristicas:
        
        siguienteButton.backgroundColor = .black
        
    }
    
    // Actions:
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        contador = contador + 1
        contadorLabel.text = "\(contador)"
        if contador == 10 {
            return contador = 0
        }
        
    }
}
