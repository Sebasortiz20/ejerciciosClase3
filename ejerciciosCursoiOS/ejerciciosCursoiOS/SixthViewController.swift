//
//  SixthViewController.swift
//  ejerciciosCursoiOS
//
//  Created by sebas  on 24/11/22.
//

import UIKit

class SixthViewController: UIViewController {
    
    @IBOutlet weak var nombresLabel: UILabel!
    
    var contador = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        
        var nombres: [String] = ["Luis", "Gloria", "David", "Natalia"]
            nombres.append("Rocky")
        contador = contador + 1
        
        if contador == 1 {
            nombresLabel.text = nombres[0]
        } else if contador == 2 {
            nombresLabel.text = nombres[1]
        } else if contador == 3 {
            nombresLabel.text = nombres[2]
        } else if contador == 4 {
            nombresLabel.text = nombres[3]
        } else if contador == 5 {
            nombresLabel.text = nombres[4]
        } else {
            contador = 0
        }
        
    }
    
}
