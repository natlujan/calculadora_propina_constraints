//
//  ViewController.swift
//  propina-interacciones
//
//  Created by Alumno on 18/08/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var porcentaje : Float = 20.0
    

    @IBOutlet weak var lblPorcentaje: UILabel!
    @IBOutlet weak var lblPropinaTotal: UILabel!
    @IBOutlet weak var lblPrecioTotal: UILabel!
    @IBOutlet weak var sldPropinaOutlet: UISlider!
    @IBOutlet weak var txtPrecioOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func doChangePorpina(_ sender: Any) {
        porcentaje = (sldPropinaOutlet.value)
        lblPorcentaje.text = "\(porcentaje)%"
        
        
        let txtPrecio = txtPrecioOutlet.text!
        let precio = Float(txtPrecio) ?? 0.0
        let propina = precio * (porcentaje / 100.0)
        lblPropinaTotal.text = "\(propina)"
        
        let total = precio + propina
        lblPrecioTotal.text =  "\(total)"
        
    }

    
}

