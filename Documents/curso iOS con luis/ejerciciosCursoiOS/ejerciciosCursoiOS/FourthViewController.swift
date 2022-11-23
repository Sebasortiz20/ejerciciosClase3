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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        let numeroAleatorio = Int.random(in: 1 ... 10)
        contadorLabel.text = "\(numeroAleatorio)"
        if (numeroAleatorio / 2) * 2 == numeroAleatorio {
            caraFelizImage.image = UIImage(named: "caraTriste")
            
        }else {
            caraFelizImage.image = UIImage(named: "caraFeliz")
            
        }
        
    }
    
}
