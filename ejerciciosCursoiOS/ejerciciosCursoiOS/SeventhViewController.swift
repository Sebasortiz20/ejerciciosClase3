//
//  SeventhViewController.swift
//  ejerciciosCursoiOS
//
//  Created by sebas  on 24/11/22.
//

import UIKit

class SeventhViewController: UIViewController {
    
    
    @IBOutlet weak var nombreMarcaLabel: UILabel!
    @IBOutlet weak var imagenMarcaImage: UIImageView!
    
    var contador = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        
        let marcas: [String] = ["Mazda", "Ferrari", "Ford"]
        contador = contador + 1
        
        if contador == 1 {
            nombreMarcaLabel.text = marcas[0]
            imagenMarcaImage.image = UIImage(named: "Mazda")
        } else if contador == 2 {
            nombreMarcaLabel.text = marcas[1]
            imagenMarcaImage.image = UIImage(named: "Ferrari")
        } else if contador == 3 {
            nombreMarcaLabel.text = marcas[2]
            imagenMarcaImage.image = UIImage(named: "Ford")
        } else {
            contador = 0 
        }
        
        
        
        
    }
    
}
