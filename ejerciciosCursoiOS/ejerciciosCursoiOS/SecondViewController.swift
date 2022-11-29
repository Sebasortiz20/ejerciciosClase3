//
//  SecondViewController.swift
//  ejerciciosCursoiOS
//
//  Created by sebas  on 22/11/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var contadorLabel: UILabel!
    
    struct Constant {
        static let counterInitialValue = 10
        static let counterFinalValue = 0
    }
    
    var contador = Constant.counterInitialValue
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        updateCounter()
        presentCounter()
    }
    
    func updateCounter () {
        if contador <= Constant.counterFinalValue {
            return
        }
        contador = contador - 1
    }
    
    func presentCounter () {
        contadorLabel.text = "\(contador)"
    }
}
