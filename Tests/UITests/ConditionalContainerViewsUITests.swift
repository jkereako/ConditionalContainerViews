//
//  ConditionalContainerViewsUITests.swift
//  ConditionalContainerViewsUITests
//
//  Created by Jeff Kereakoglow on 12/31/15.
//  Copyright © 2015 Jeff Kereakoglow. All rights reserved.
//

import XCTest

class ConditionalContainerViewsUITests: XCTestCase {

  override func setUp() {
    super.setUp()

    continueAfterFailure = false
  }

  func testContentViewAppearsWhenContentExists() {
    let app = XCUIApplication()
    app.launchArguments = ["HasContent"]
    app.launch()

    XCTAssert(app.staticTexts["contentTitle"].exists)
  }

  func testBlankViewAppearsWhenContentDoesNotExist() {
    let app = XCUIApplication()
    app.launchArguments = ["NoContent"]
    app.launch()

    XCTAssert(app.staticTexts["blankStateTitle"].exists)
  }
}
