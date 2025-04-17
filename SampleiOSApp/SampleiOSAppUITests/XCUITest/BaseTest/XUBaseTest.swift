//
//  XUBaseTest.swift
//  SampleiOSAppUITests
//
//  Created by Girish Chauhan on 17/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import Foundation
import XCTest

class XUBaseTest: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
}
