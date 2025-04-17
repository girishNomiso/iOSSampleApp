//
//  XUBaseRobot.swift
//  SampleiOSAppUITests
//
//  Created by Girish Chauhan on 16/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import Foundation
import XCTest

public class XUBaseRobot {
    let app: XCUIApplication
    let waitTimeout: TimeInterval = 5
    
    init(app: XCUIApplication = XCUIApplication()) {
        self.app = app
    }
    
    func waitForElementExist(_ element: XCUIElement) {
        XCTAssertTrue(element.waitForExistence(timeout: waitTimeout))
    }
    
    func enterText(_ element: XCUIElement, text: String) {
        waitForElementExist(element)
        element.tap()
        element.clearAndEnterText(text)
    }
    
    func tap(_ element: XCUIElement) {
        waitForElementExist(element)
        element.tap()
    }
}

extension XCUIElement {
    func clearAndEnterText(_ text: String) {
        tap()
        guard let stringValue = self.value as? String else {
            typeText(text)
            return
        }

        let deleteString = stringValue.map { _ in "\u{8}" }.joined()
        typeText(deleteString)
        typeText(text)
    }
}

