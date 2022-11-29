//
//  SixthViewController.swift
//  ejerciciosCursoiOS
//
//  Created by sebas  on 24/11/22.
//

import UIKit

class SixthViewController: UIViewController {
    
    @IBOutlet weak var nombresLabel: UILabel!
    
    var nombres: [String] = ["Luis", "Gloria", "David", "Natalia"]
    var contador = 0
    var numberElementsArray = 5
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        updateCounter()
        addNewName()
        showName()
    }
    
    func updateCounter () {
        contador = contador + 1
        if contador > numberElementsArray {
            contador = 1
        }
    }
    
    func showName () {
        let indiceAPintar = contador - 1
        nombresLabel.text = nombres [indiceAPintar]
    }
    
    func addNewName () {
        nombres.append("rocky")
    }
}
