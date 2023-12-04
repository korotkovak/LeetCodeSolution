import Foundation

/*
 You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

 Return the merged string.
 */

// MARK: - ONE

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var resumeArray = [String]()

    let biggest = max(word1.count, word2.count)

    for i in 0..<biggest {
        if i < word1.count {
            let index = word1.index(word1.startIndex, offsetBy: i)
            resumeArray.append(String(word1[index]))
        }

        if i < word2.count {
            let index = word2.index(word2.startIndex, offsetBy: i)
            resumeArray.append(String(word2[index]))
        }
    }

    return resumeArray.joined()
}

// MARK: - TWO

func mergeAlternatelyTwo(_ word1: String, _ word2: String) -> String {
    var word1Array = [Character]()
    var word2Array = [Character]()

    var resumeArray = [Character]()

    let biggest = max(word1.count, word2.count)

    for char in word1 {
        word1Array.append(char)
    }

    for char in word2 {
        word2Array.append(char)
    }

    for _ in 0..<biggest {
        if !word1Array.isEmpty {
            if let item = word1Array.first {
                resumeArray.append(item)
                word1Array.removeFirst()
            }
        }

        if !word2Array.isEmpty {
            if let item = word2Array.first {
                resumeArray.append(item)
                word2Array.removeFirst()
            }
        }
    }

    return String(resumeArray)
}

mergeAlternately("abcd", "pq")
mergeAlternatelyTwo("abcd", "pq")
