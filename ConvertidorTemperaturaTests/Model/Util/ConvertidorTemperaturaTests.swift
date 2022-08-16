//
//  ConvertidorTemperaturaTests.swift
//  ConvertidorTemperaturaTests
//
//  Created by user222911 on 8/14/22.
//

import XCTest
@testable import ConvertidorTemperatura

class ConvertidorTemperaturaTests: XCTestCase {
    let convertidor = ConvertidorTemperatura()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConvertirCelsiusAFahrenheit() throws {
        // Given
        let temperaturaInicial = Temperatura(valor: 0, unidad: Temperatura.Unidad.CELSIUS)
        
        // When
        let temperaturaConvertida = convertidor.convertir(temperatura: temperaturaInicial, unidadAConvertir: Temperatura.Unidad.FAHRENHEIT)
        
        // Then
        let temperaturaEsperada = Temperatura(valor: 32, unidad: Temperatura.Unidad.FAHRENHEIT)
        XCTAssertEqual(temperaturaEsperada.valor, temperaturaConvertida.valor)
        XCTAssertEqual(temperaturaEsperada.unidad, temperaturaConvertida.unidad)
    }
    
    func testConvertirFahrenheitACelsius() throws {
        // Given
        let temperaturaInicial = Temperatura(valor: 68, unidad: Temperatura.Unidad.FAHRENHEIT)
        
        // When
        let temperaturaConvertida = convertidor.convertir(temperatura: temperaturaInicial, unidadAConvertir: Temperatura.Unidad.CELSIUS)
        
        // Then
        let temperaturaEsperada = Temperatura(valor: 20, unidad: Temperatura.Unidad.CELSIUS)
        XCTAssertEqual(temperaturaEsperada.valor, temperaturaConvertida.valor)
        XCTAssertEqual(temperaturaEsperada.unidad, temperaturaConvertida.unidad)
    }
    
    func testConvertirCelsiusACelsius() throws {
        // Given
        let temperaturaInicial = Temperatura(valor: 0, unidad: Temperatura.Unidad.CELSIUS)
        
        // When
        let temperaturaConvertida = convertidor.convertir(temperatura: temperaturaInicial, unidadAConvertir: Temperatura.Unidad.CELSIUS)
        
        // Then
        let temperaturaEsperada = Temperatura(valor: 0, unidad: Temperatura.Unidad.CELSIUS)
        XCTAssertEqual(temperaturaEsperada.valor, temperaturaConvertida.valor)
        XCTAssertEqual(temperaturaEsperada.unidad, temperaturaConvertida.unidad)
    }
    
    func testConvertirFahrenheitAFahrenheit() throws {
        // Given
        let temperaturaInicial = Temperatura(valor: 68, unidad: Temperatura.Unidad.FAHRENHEIT)
        
        // When
        let temperaturaConvertida = convertidor.convertir(temperatura: temperaturaInicial, unidadAConvertir: Temperatura.Unidad.FAHRENHEIT)
        
        // Then
        let temperaturaEsperada = Temperatura(valor: 68, unidad: Temperatura.Unidad.FAHRENHEIT)
        XCTAssertEqual(temperaturaEsperada.valor, temperaturaConvertida.valor)
        XCTAssertEqual(temperaturaEsperada.unidad, temperaturaConvertida.unidad)
    }
}
