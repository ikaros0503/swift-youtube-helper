//
//  YouTubeAPIWrapperTests.swift
//  YouTubeAPIWrapperTests
//
//  Created by An Nguyen on 10/17/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import XCTest
@testable import YouTubeAPIWrapper

class YouTubeAPIWrapperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        YouTube.video().list(part: "snippet")
            .setId(id: "HXkh7EOqcQ4")
            .setKey(key: "AIzaSyBzMYgY2FS9cf9F9uNnlEcVM5IWKdKjKxE")
            .execute()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
