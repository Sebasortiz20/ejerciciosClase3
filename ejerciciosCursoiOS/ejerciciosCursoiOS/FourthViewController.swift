//
//  FourthViewController.swift
//  ejerciciosCursoiOS
//
//  Created by sebas  on 22/11/22.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var contadorLabel: UILabel!
    @IBOutlet weak var caraFelizImage: UIImageView!
    @IBOutlet weak var buttonSiguiente: UIButton!
    
    var numeroAleatorio = 0
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        validateImage()
        presentCounterLabel()
    }
    
    func presentHappyFace () {
        caraFelizImage.image = UIImage(named: "caraFeliz")
    }
    
    func presentSadFace () {
        caraFelizImage.image = UIImage(named: "caraTriste")
    }
    
    func  presentCounterLabel () {
        contadorLabel.text = "\(numeroAleatorio)"
    }
    
    func validateImage () {
        numeroAleatorio = Int.random(in: 1 ... 10)
        if (numeroAleatorio % 2) == 0 {
            presentHappyFace()
        } else {
            presentSadFace()
        }
    }
}
