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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        
        let numeroAleatorio = Int.random(in: 1 ... 10)
        numeroLabel.text = "\(numeroAleatorio)"
        if numeroAleatorio == 9 {
            imagenLabelImage.image = UIImage(named: "Explosion")
            buttonSiguiente.isHidden = true
            numeroLabel.isHidden = true
        }
        
    }
        
}
    
