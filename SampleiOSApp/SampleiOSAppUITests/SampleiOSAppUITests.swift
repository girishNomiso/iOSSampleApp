//
//  SampleiOSAppUITests.swift
//  SampleiOSAppUITests
//
//  Created by Girish Chauhan on 07/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import XCTest

final class SampleiOSAppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    @MainActor
    func testVerifyLoginScreen() throws {
        // Launch app
        let app = XCUIApplication()
        app.launch()
        // Get Elements
        let txtEmail = app.textFields["txtEmail"].firstMatch
        let txtPassword = app.secureTextFields["txtPassword"].firstMatch
        let btnLogin = app.buttons["btnLogin"].firstMatch
        
        // Validate Elements
        XCTAssertTrue(txtEmail.exists)
        XCTAssertTrue(txtPassword.exists)
        XCTAssertTrue(btnLogin.exists)
        
        // Interact
        btnLogin.tap()
        
        let homeTitle = app.staticTexts["Home"].firstMatch
        XCTAssertTrue(homeTitle.exists)
    }
    
    @MainActor
    func testVerifyLoginScreenUIByLabels() throws {
        // Launch app
        let app = XCUIApplication()
        app.launch()
        // Get Elements
        let txtEmail = app.textFields["Email"].firstMatch
        let txtPassword = app.secureTextFields["Password"].firstMatch
        let btnLogin = app.buttons["Login"].firstMatch
        
        // Validate Elements
        XCTAssertTrue(txtEmail.exists)
        XCTAssertTrue(txtPassword.exists)
        XCTAssertTrue(btnLogin.exists)
        
        // Interact
        btnLogin.tap()
        
        let homeTitle = app.staticTexts["Home"].firstMatch
        XCTAssertTrue(homeTitle.exists)
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
