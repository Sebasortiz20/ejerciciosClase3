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
    
    // var numeroAleatorio = Int.random(in: 1 ... 10) no me funciono solo me generaba un solo numero random
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        let numeroAleatorio = Int.random(in: 1 ... 10)
        contadorLabel.text = "\(numeroAleatorio)"
        if numeroAleatorio == 7 {
                buttonSiguiente.setTitle("BINGO!", for: .normal)
                buttonSiguiente.isEnabled = false
            }
        }
    }
    

