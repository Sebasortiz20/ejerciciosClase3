//
//  SecondViewController.swift
//  ejerciciosCursoiOS
//
//  Created by sebas  on 22/11/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var contadorLabel: UILabel!
    
    var contador = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        contador = contador - 1
        contadorLabel.text = "\(contador)"
        if contador <= 0 {
            return contador = 1
        }
        
    }
    
}
