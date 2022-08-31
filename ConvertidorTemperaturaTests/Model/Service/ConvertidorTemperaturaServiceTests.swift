//
//  ConvertidorTemperaturaServiceTests.swift
//  ConvertidorTemperaturaTests
//
//  Created by user222911 on 8/30/22.
//

import XCTest
@testable import ConvertidorTemperatura

class ConvertidorTemperaturaServiceTests: XCTestCase {
    let servicio = ConvertidorTemperaturaService()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConvertirAFahrenheit() throws {
        // Given
        let temperaturaInicial = Temperatura(valor: 0, unidad: Temperatura.Unidad.CELSIUS)
        
        // When
        let conversionExpectation = expectation(description: "Conversion Terminada")
        servicio.convertirAFahrenheit(temperatura: temperaturaInicial) {
            (temperaturaConvertida) in
            conversionExpectation.fulfill()
            // Then
            let temperaturaEsperada = Temperatura(valor: 32, unidad: Temperatura.Unidad.FAHRENHEIT)
            XCTAssertEqual(temperaturaEsperada.valor, temperaturaConvertida?.valor)
            XCTAssertEqual(temperaturaEsperada.unidad, temperaturaConvertida?.unidad)
        }
        
        // Then
        waitForExpectations(timeout: 10) {
            (error) in

            if let error = error {
                XCTFail("waitForExpectations errored: \(error)")
            } else {
                XCTAssert(true)
            }
        }
    }
}
