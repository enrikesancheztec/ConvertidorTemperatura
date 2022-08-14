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
        fahrenheitTextField.text = "32.0"
    }
}

