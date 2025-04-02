//
//  TodoDemoAppUITests.swift
//  TodoDemoAppUITests
//
//  Created by Girish Chauhan on 24/03/25.
//

import XCTest

final class TodoDemoAppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddTodo() throws {
        let app = XCUIApplication()
        app.launch()
        
        // Get Add button
        let addButton = app.buttons["Add Item"]
        XCTAssert(addButton.exists, "Add button does not exist")
        
        // Tap on click
        addButton.tap()
        
        // Wait test case for 5 seconds
        Thread.sleep(forTimeInterval: 5)
        
        // Get recent row in table
        let list = app.collectionViews.firstMatch
        print("Table cells", list.cells.count)
        XCTAssert(list.cells.count > 0, "No item added")
        
//        // Click on first row of table
        list.cells.element(boundBy: 0).tap()
    }
}
