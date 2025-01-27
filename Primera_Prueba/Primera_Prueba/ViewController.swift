//
//  ViewController.swift
//  Primera_Prueba
//
//  Created by Carlos Hernandez on 26/1/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var boton1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func botonPulsado(_ sender: Any) {
        print("BIENVENIDO")
        label1.text="BIENVENIDO ALUMNO"
    }
    
}

