//
//  Temperatura.swift
//  ConvertidorTemperatura
//
//  Created by user222911 on 8/14/22.
//

import Foundation

/// ValueObject para manejar los datos que pertenecen a una Temperatura, como son valor y unidad
public class Temperatura : Codable {
    public let valor : Float16
    public let unidad : Unidad
    
    /// Inicializador de Objetos de la clase Temperatura
    /// - Parameters:
    ///   - valor: El valor de la temperatura, ejemplo: 16
    ///   - unidad: La unidad de la temperatura, ejemplo: CELSIUS
    public init(valor : Float16, unidad : Unidad) {
        self.valor = valor
        self.unidad = unidad
    }
    
    /// Enumeracion que me limita los posibles valores que seran aceptados como unidad de temperatura
    public enum Unidad: String, Codable {
        case FAHRENHEIT
        case CELSIUS
    }
}
