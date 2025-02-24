//
//  BITLIFE2UITests.swift
//  BITLIFE2UITests
//
//  Created by Aaetos on 20/02/25.
//

import XCTest

final class BITLIFE2UITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        app = nil
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
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

    func testQuizTopicsPresent() throws {
        // Test that the main title is visible
        let quizTitle = app.staticTexts["Math & CS Quiz"]
        XCTAssertTrue(quizTitle.exists, "Quiz title should be visible")
        
        // Test that all topics are present
        let topics = ["Algebra", "Calculus", "Programming", "Logic", "Algorithms", "Computer Organization"]
        for topic in topics {
            let topicText = app.staticTexts[topic]
            XCTAssertTrue(topicText.exists, "Topic '\(topic)' should be visible")
        }
    }
    
    func testTopicNavigation() throws {
        // Tap on Algebra topic
        let algebraTopic = app.staticTexts["Algebra"]
        XCTAssertTrue(algebraTopic.exists, "Algebra topic should be visible")
        algebraTopic.tap()
        
        // Verify we're on the question view
        let showAnswerButton = app.buttons["Show Answer"]
        let nextQuestionButton = app.buttons["Next Question"]
        
        XCTAssertTrue(showAnswerButton.exists, "Show Answer button should be visible")
        XCTAssertTrue(nextQuestionButton.exists, "Next Question button should be visible")
    }
}
