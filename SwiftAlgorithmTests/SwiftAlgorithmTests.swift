//
//  SwiftAlgorithmTests.swift
//  SwiftAlgorithmTests
//
//  Created by Jiwon Yoon on 1/1/24.
//

import XCTest

@testable import SwiftAlgorithm

final class SwiftAlgorithmTests: XCTestCase {
    
    var algorithm: Algorithm!

    override func setUp() {
        super.setUp()
        algorithm = Algorithm()
    }

    override func tearDown() {
        super.tearDown()
        algorithm = nil
    }

    func test_Palindrome() {
        let ex1 = "A man, a plan, a canal: Panama"
        let ex2 = "race a car"
        let ex3 = " "

        XCTAssertTrue(algorithm.isPalindrome(ex1))
        XCTAssertFalse(algorithm.isPalindrome(ex2))
        XCTAssertTrue(algorithm.isPalindrome(ex3))
    }

    func test_reverseString() {
        var ex1: [Character] = ["h","e","l","l","o"]
        var ex2: [Character] = ["H","a","n","n","a","h"]

        let target1: [Character] = ["o","l","l","e","h"]
        let target2: [Character] = ["h","a","n","n","a","H"]
        algorithm.reverseString(&ex1)
        algorithm.reverseString(&ex2)
        XCTAssertEqual(ex1, target1)
        XCTAssertEqual(ex2, target2)
    }

}
