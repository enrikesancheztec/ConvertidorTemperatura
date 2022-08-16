//
//  ViewController.swift
//  ConvertidorTemperatura
//
//  Created by user222911 on 8/14/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertir(_ sender: UIButton) {
        fahrenheitTextField.text = ""
        let convertir = ConvertidorTemperatura()
        
        if let valorCelsius = celsiusTextField.text {
            if !valorCelsius.isEmpty {
                let valorFahrenheit = convertir.convertir(temperatura: Temperatura(valor: Float16(valorCelsius)!, unidad: Temperatura.Unidad.CELSIUS), unidadAConvertir: Temperatura.Unidad.FAHRENHEIT)
                print("Farenheit " + String(valorFahrenheit.valor))
                fahrenheitTextField.text = String(valorFahrenheit.valor)
            } else {
                print("Valor Celsius esta vacio")
            }
        }
    }
}

