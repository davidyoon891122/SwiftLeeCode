//
//  ValidParindrome.swift
//  SwiftAlgorithm
//
//  Created by Jiwon Yoon on 1/1/24.
//

import Foundation

class Algorithm {

    func isPalindrome(_ s: String) -> Bool {
        let stringArray = Array(s.lowercased())

        var first = 0
        var last = stringArray.count - 1

        while first < last {
            if !stringArray[first].isNumber, !stringArray[first].isLetter { first += 1; continue }
            if !stringArray[last].isNumber, !stringArray[last].isLetter { last -= 1; continue }

            guard stringArray[first] == stringArray[last] else { return false }

            first += 1
            last -= 1
        }

        return true
    }

    func reverseString(_ s: inout [Character]) {
        var first = 0
        var last = s.count - 1

        while first < last {
            var temp: Character

            temp = s[first]
            s[first] = s[last]
            s[last] = temp

            first += 1
            last -= 1
        }
        
    }
}
