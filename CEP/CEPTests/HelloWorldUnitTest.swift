//
//  HelloWorldUnitTest.swift
//  CEPTests
//
//  Created by Rastislav Smolen on 22/12/2020.
//

import XCTest
@testable import CEP

class HelloWorldUnitTest: XCTestCase {

    var sut : HelloWorldViewModel!
    override func setUp() {
        super.setUp()
        sut = HelloWorldViewModel()
        
    }
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    func test_HelloWorld_Label_Is_Equal_To_Value() {
        XCTAssertEqual(sut.helloWorldTitleLabel, "Hello World !!!")
    }

}
