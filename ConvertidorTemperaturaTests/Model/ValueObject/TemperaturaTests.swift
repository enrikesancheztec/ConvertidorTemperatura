//
//  TemperaturaTests.swift
//  ConvertidorTemperaturaTests
//
//  Created by user222911 on 8/14/22.
//

import XCTest
@testable import ConvertidorTemperatura

class TemperaturaTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInit() throws {
        // Given
        let valor : Float16 = 16
        let unidad = Temperatura.Unidad.CELSIUS
        
        // When
        let temperatura = Temperatura.init(valor: valor, unidad: unidad)
        
        // Then
        XCTAssertEqual(16, temperatura.valor)
        XCTAssertEqual(Temperatura.Unidad.CELSIUS, temperatura.unidad)
    }
}
