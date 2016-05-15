//
//  JKUITestingDemoUITests.swift
//  JKUITestingDemoUITests
//
//  Created by Jayesh Kawli Backup on 5/15/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

import XCTest

class JKUITestingDemoUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testValue() {
        
    }
    
    func testRecord() {
        XCTAssert(app.staticTexts["Choose Country"].exists)
        XCTAssert(app.staticTexts["India"].exists)
        snapshot("01FirstScreen")
        app.tables.staticTexts["India"].tap()
        
        let inputNameTextField = app.textFields["myname"]
        XCTAssert(inputNameTextField.exists)
        inputNameTextField.tap()
        inputNameTextField.typeText("Jayesh Kawli")
        
        let slider = app.sliders["myslider"]
        slider.adjustToNormalizedSliderPosition(0.9)
        let switch2 = app.switches["myswitch"]
        switch2.tap()
        app.buttons["YES"].tap()
        snapshot("02SecondScreen")
        app.buttons["Submit"].tap()
        app.alerts["Submit Profile"].buttons["YES"].tap()
        
        snapshot("03ThirdScreen")
        app.navigationBars["Jayesh Kawli"].buttons["India"].tap()
        app.navigationBars["India"].buttons["Choose Country"].tap()
    }

    
}
