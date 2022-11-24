//
//  FifthViewController.swift
//  ejerciciosCursoiOS
//
//  Created by sebas  on 22/11/22.
//

import UIKit

class FifthViewController: UIViewController {
    
    @IBOutlet weak var nombresLabel: UILabel!
    
    // var nombres = ["luis", "gloria", "david", "natalia"]
    var contador = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        let nombres: [String] = ["luis", "gloria", "david", "natalia", " sebas"]
        contador = contador + 1
        if contador == 1 {
            nombresLabel.text = nombres[0]
        } else if contador == 2 {
            nombresLabel.text = nombres[1]
        } else if contador == 3 {
            nombresLabel.text = nombres[2]
        } else if contador == 4 {
            nombresLabel.text = nombres[3]
        } else if contador == 5 {
            nombresLabel.text = nombres[4]
        } else {
            contador = 0 
        }
         // la inicializacion se da en cero pero cuando presiono el boton comienza en uno
            
            
            
            
            
            
            
            
            
        }
    }
    

