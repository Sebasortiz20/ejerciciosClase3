//
//  EighthViewController.swift
//  ejerciciosCursoiOS
//
//  Created by sebas  on 24/11/22.
//

import UIKit

class EighthViewController: UIViewController {
    
    @IBOutlet weak var numeroLabel: UILabel!
    @IBOutlet weak var imagenLabelImage: UIImageView!
    @IBOutlet weak var buttonSiguiente: UIButton!
    
    struct Constant {
        static let numberExplosion = 9
    }
    
    var numeroAleatorio = 0
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        presentCounter()
        validateImageExplosion()
    }
    
    func presentImageExplosion () {
        imagenLabelImage.image = UIImage(named: "Explosion")
    }
    
    func hideButton () {
        buttonSiguiente.isHidden = true
    }
    
    func hideNumberLabel () {
        numeroLabel.isHidden = true
    }
    
    func presentCounter () {
        numeroLabel.text = "\(numeroAleatorio)"
    }
    
    func validateImageExplosion () {
        numeroAleatorio = Int.random(in: 1 ... 10)
        if numeroAleatorio == Constant.numberExplosion {
            presentImageExplosion()
            hideButton()
            hideNumberLabel()
        }
    }
}

