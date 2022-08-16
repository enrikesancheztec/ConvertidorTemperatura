//
//  Convertidor.swift
//  ConvertidorTemperatura
//
//  Created by user222911 on 8/14/22.
//

import Foundation

/// Clases de Utileria para Convertir Temperaturas
public class ConvertidorTemperatura {
    /// Convierte una temperatura dada a la unidad de temperatura especificada
    /// - Parameters:
    ///   - temperatura: Temperatura a convertir
    ///   - unidadAConvertir: Unidad a la que se desea convertir la temperatura dada
    /// - Returns: Un objeto temperatura con el nuevo valor y la nueva undad una vez que se llevo a a cabo la converson
    public func convertir(temperatura : Temperatura, unidadAConvertir : Temperatura.Unidad) -> Temperatura {
        if (temperatura.unidad == Temperatura.Unidad.CELSIUS && unidadAConvertir == Temperatura.Unidad.FAHRENHEIT) {
            let valorConvertido: Float16 = (temperatura.valor * 9/5) + 32
            return Temperatura(valor: valorConvertido, unidad: unidadAConvertir)
        } else if (temperatura.unidad == Temperatura.Unidad.FAHRENHEIT && unidadAConvertir == Temperatura.Unidad.CELSIUS) {
            let valorConvertido: Float16 = (temperatura.valor - 32) * 5/9
            return Temperatura(valor: valorConvertido, unidad: unidadAConvertir)
        } else {
            return Temperatura(valor: temperatura.valor, unidad: unidadAConvertir)
        }
    }
}
