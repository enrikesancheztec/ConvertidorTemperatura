//
//  ConvertidorTemperaturaService.swift
//  ConvertidorTemperatura
//
//  Created by user222911 on 8/30/22.
//

import Alamofire

// https://github.com/Alamofire/Alamofire

class ConvertidorTemperaturaService {
    public typealias ConvertirAoFahrenheitClosure = (Temperatura?) -> Void
    
    func convertirAFahrenheit(temperatura: Temperatura, finalizar: @escaping ConvertirAoFahrenheitClosure) {
        AF.request("https://convertidortemperaturatec.herokuapp.com/temperatura/fahrenheit", method: .post, parameters: temperatura, encoder: JSONParameterEncoder.default)
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseDecodable(of: Temperatura.self) { respuesta in
            switch respuesta.result {
                case .success:
                    finalizar(respuesta.value)
                case let .failure(error):
                    print(error)
                    finalizar(nil)
            }
        }
    }
}
