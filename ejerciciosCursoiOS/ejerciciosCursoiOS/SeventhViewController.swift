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
    
    struct Constant {
        static let numberElementsArray = 3
    }
    
    let marcas: [String] = ["Mazda", "Ferrari", "Ford"]
    let imagenes = [UIImage(named: "Mazda"), UIImage(named: "Ferrari"), UIImage(named: "Ford")]
    var contador = 1
    
    @IBAction func actionButtonSiguiente(_ sender: Any) {
        updateCounter()
        showName()
        showImage()
    }
    
    func updateCounter () {
        contador = contador + 1
        if contador > Constant.numberElementsArray {
            contador = 1
        }
    }
    
    func showName () {
        let indiceAPintar = contador - 1
        nombreMarcaLabel.text = marcas [indiceAPintar]
    }
    
    func showImage () {
        let imageAPintar = contador - 1
        imagenMarcaImage.image = imagenes [imageAPintar]
    }
}
