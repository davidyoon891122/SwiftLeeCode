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

        /// It can be faster than upper solution
        // s = s.reversed()
    }


    func reorderLogFiles(_ logs: [String]) -> [String] {
        var digitArray: [String] = []
        var letterArray: [String] = []


        for log in logs {
            let components = log.components(separatedBy: " ")

            if let firstLetter = components[1].first {
                if firstLetter.isLetter {
                    letterArray.append(log)
                } else {
                    digitArray.append(log)
                }
            }
        }

        letterArray = letterArray.sorted(by: { first, second in
            let firstIndex = first.firstIndex(of: " ")!
            let secondIndex = second.firstIndex(of: " ")!

            let firstItem = first[firstIndex...]
            let secondItem = second[secondIndex...]

            if firstItem.compare(secondItem, options: .caseInsensitive) == .orderedSame {
                return first.compare(second) == .orderedAscending
            }

            return firstItem.compare(secondItem) == .orderedAscending
        })

        return letterArray + digitArray
    }

    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        var result = ""

        for char in paragraph {
            if char.isLetter || char.isNumber || char == " " {
                result.append(char)
            } else {
                result.append(" ")
            }
        }

        var words = result.lowercased().components(separatedBy: " ")
        words = words.filter { !$0.isEmpty }

        var countDictionay: [String: Int] = [:]


        for word in words {
            if !banned.contains(word) {
                if countDictionay.contains(where: { $0.key == word }) {
                    countDictionay[word]! += 1
                } else {
                    countDictionay[word] = 1
                }
            }
        }

        if let maxValueEntry = countDictionay.max(by: { $0.value < $1.value }) {
            print(maxValueEntry.key)
            return maxValueEntry.key
        }

        return result
    }

    func groupAnagrams(_ strs: [String]) -> [[String]] {

        var wordDictionary: [String: [String]] = [:]

        for word in strs {
            let sortedWord = String(word.sorted())

            wordDictionary[sortedWord, default: []].append(word)
        }

        return Array(wordDictionary.values)
    }
}
