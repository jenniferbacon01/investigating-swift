//
//  MyHelloWorldUITests.swift
//  MyHelloWorldUITests
//
//  Created by Jennifer Bacon on 07/10/2017.
//  Copyright © 2017 Jenny. All rights reserved.
//

import XCTest

class MyHelloWorldUITests: XCTestCase {
    
    let app = XCUIApplication()
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHelloWorldButtonExists() {
        XCTAssert(app.buttons["Hello World"].exists)
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testHelloWorldButtonWorks(){
        app.buttons["Hello World"].tap()
        XCTAssert(app.staticTexts["Welcome to My First App"].exists)
    }
    
    func testGoodButtonWorks(){
        app.buttons["Good"].tap()
        XCTAssert(app.staticTexts["You're good"].exists)
    }
    
    func testNotGoodButtonWorks(){
        app.buttons["Not Good"].tap()
        XCTAssert(app.staticTexts["You're not good"].exists)
        
    }
    
    func testImGoodButtonWorks(){
        app.buttons["I'm Good"].tap()
        XCTAssert(app.staticTexts["Good!"].exists)
    }
    
}
