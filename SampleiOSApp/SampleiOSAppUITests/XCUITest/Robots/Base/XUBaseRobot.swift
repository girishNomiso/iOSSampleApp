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

