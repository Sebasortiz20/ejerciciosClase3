//
//  ThirdViewController.swift
//  ejerciciosCursoiOS
//
//  Created by sebas  on 22/11/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var contadorLabel: UILabel!
    @IBOutlet weak var buttonSiguiente: UIButton!
    
    struct Constant {
        static let bingoRandomNumber = 7
    }
    
    var numeroAleatorio = 0
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        presentCounter()
        inspectNumberBingo()
    }
    
    func presentCounter () {
        numeroAleatorio = Int.random(in: 1 ... 10)
        contadorLabel.text = "\(numeroAleatorio)"
    }
    
    func updateLabelButton () {
        buttonSiguiente.setTitle("BINGO!", for: .normal)
    }
    
    func disableButton () {
        buttonSiguiente.isEnabled = false
    }
    
    func inspectNumberBingo () {
        if numeroAleatorio == Constant.bingoRandomNumber {
            updateLabelButton()
            disableButton()
        }
    }
}
