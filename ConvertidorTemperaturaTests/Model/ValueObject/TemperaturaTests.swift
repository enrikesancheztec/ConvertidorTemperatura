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

    func testEncode() throws {
        // Given
        let temperatura = Temperatura.init(valor: 20, unidad: Temperatura.Unidad.CELSIUS)
        
        do {
            // When
            let resultJson = try JSONEncoder().encode(temperatura)
            
            // Then
            let expectedJson = "{\"valor\":20,\"unidad\":\"CELSIUS\"}".data(using: .utf8)!
            
            XCTAssertEqual(resultJson, expectedJson)
        } catch {
            XCTFail("error info: \(error)")
        }
    }

    func testDecode() throws {
        // Given
        let json = """
            {
                "valor": 20,
                "unidad": "CELSIUS"
            }
        """.data(using: .utf8)!
        do {
            // When
            let temperatura = try JSONDecoder().decode(Temperatura.self, from: json)
            
            // Then
            XCTAssertEqual(temperatura.valor, 20)
            XCTAssertEqual(temperatura.unidad, Temperatura.Unidad.CELSIUS)
        } catch {
            XCTFail("error info: \(error)")
        }
    }
}
