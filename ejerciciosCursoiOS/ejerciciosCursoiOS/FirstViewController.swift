

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var contadorLabel: UILabel!
    @IBOutlet weak var siguienteButton: UIButton!
    
    struct Constant {
        static let counterInitialValue = 1
        static let counterFinalValue = 11
    }
    
    var contador = Constant.counterInitialValue
    override func viewDidLoad() {
        super.viewDidLoad()
        
        siguienteButton.backgroundColor = .black
    }
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        updateCounter()
        presentCounter()
    }
    
    func presentCounter () {
        contadorLabel.text = "\(contador)"
    }
    
    func updateCounter () {
        contador = contador + 1
        
        if contador == Constant.counterFinalValue {
            contador = 1
        }
    }
}
