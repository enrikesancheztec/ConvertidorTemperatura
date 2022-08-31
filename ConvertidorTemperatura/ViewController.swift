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
        let servicio = ConvertidorTemperaturaService()
        
        if let valorCelsius = celsiusTextField.text {
            if !valorCelsius.isEmpty {
                servicio.convertirAFahrenheit(temperatura: Temperatura(valor: Float16(valorCelsius)!, unidad: Temperatura.Unidad.CELSIUS)) {
                    [weak self] (temperaturaFahrenheit) in
                    DispatchQueue.main.async {
                        self?.fahrenheitTextField.text = String(temperaturaFahrenheit?.valor ?? 0)                        
                    }
                }
            } else {
                print("Valor Celsius esta vacio")
            }
        }
    }
}

