//
//  FifthViewController.swift
//  ejerciciosCursoiOS
//
//  Created by sebas  on 22/11/22.
//

import UIKit

class FifthViewController: UIViewController {
    
    @IBOutlet weak var nombresLabel: UILabel!
    
    struct Constant {
        static let numberElementsArray = 4
    }
    
    let nombres = ["luis", "gloria", "david", "natalia"]
    var contador = 0
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        updateCounter()
        showName()
    }
    
    func updateCounter () {
        contador = contador + 1
        if contador > Constant.numberElementsArray {
            contador = 1
        }
    }
    
    func showName () {
        let indiceAPintar = contador - 1
        nombresLabel.text = nombres [indiceAPintar]
    }
}


