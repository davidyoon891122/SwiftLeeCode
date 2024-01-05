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

    func test_reorderLogFiles() {
        let logs1 = ["dig1 8 1 5 1","let1 art can","dig2 3 6","let2 own kit dig","let3 art zero"]
        let logs2 = ["j mo", "5 m w", "g 07", "o 2 0", "t q h"]

        let sol1 = ["let1 art can","let3 art zero","let2 own kit dig","dig1 8 1 5 1","dig2 3 6"]
        let sol2 = ["5 m w","j mo","t q h","g 07","o 2 0"]




        let result = algorithm.reorderLogFiles(logs1)

        XCTAssertEqual(result, sol1)

        let result2 = algorithm.reorderLogFiles(logs2)

        XCTAssertEqual(result2, sol2)
    }

    func test_mostCommonWord() {
        let paragraph = "Bob hit a ball, the hit BALL flew far after it was hit."
        let paragraph2 = "a, a, a, a, b,b,b,c, c"

        let banned = ["hit"]
        let banned2 = ["a"]

        let sol = "ball"
        let sol2 = "b"
        
        XCTAssertEqual(algorithm.mostCommonWord(paragraph, banned), sol)
        XCTAssertEqual(algorithm.mostCommonWord(paragraph2, banned2), sol2)
    }

    func test_groupAnagrams() {
        let strs = ["eat","tea","tan","ate","nat","bat"]

        let sol = [["bat"], ["nat","tan"], ["ate","eat","tea"]]

        XCTAssertEqual(algorithm.groupAnagrams(strs).count, sol.count)
    }

}
