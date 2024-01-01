//
//  SwiftAlgorithmTests.swift
//  SwiftAlgorithmTests
//
//  Created by Jiwon Yoon on 1/1/24.
//

import XCTest

@testable import SwiftAlgorithm

final class SwiftAlgorithmTests: XCTestCase {
    
    var validParindrom: ValidParindrome!

    override func setUp() {
        super.setUp()
        validParindrom = ValidParindrome()
    }

    override func tearDown() {
        super.tearDown()
        validParindrom = nil
    }

    func test_Palindrome() {
        let ex1 = "A man, a plan, a canal: Panama"
        let ex2 = "race a car"
        let ex3 = " "

        XCTAssertTrue(validParindrom.isPalindrome(ex1))
        XCTAssertFalse(validParindrom.isPalindrome(ex2))
        XCTAssertTrue(validParindrom.isPalindrome(ex3))
    }

}
