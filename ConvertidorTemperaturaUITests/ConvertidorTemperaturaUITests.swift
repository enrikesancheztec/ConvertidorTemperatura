//
//  ConvertidorTemperaturaUITests.swift
//  ConvertidorTemperaturaUITests
//
//  Created by user222911 on 8/14/22.
//

import XCTest

class ConvertidorTemperaturaUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConversionNumeroRealValido() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let celsiusTextField = app.textFields["campoGradosCentigrados"]
        let fahrenheitTextField = app.textFields["campoGradosFahrenheit"]
        
        // GIVEN
        celsiusTextField.tap()
        celsiusTextField.typeText("0")
        
        // WHEN
        app.staticTexts["Convertir"].tap()
        
        // THEN
        XCTAssertEqual(fahrenheitTextField.value as! String, "32.0")
    }
}
