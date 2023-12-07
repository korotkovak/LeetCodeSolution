import Foundation

class Solution {
    func reverseVowels(_ s: String) -> String {
        var characters = Array(s)
        var vowels = [Character]()
        var indexArr = [Int]()

        for i in 0..<characters.count {
            switch characters[i] {
            case "a", "A","e", "E", "i","I", "o", "O", "u", "U":
                vowels.append(characters[i])
                indexArr.append(i)
            default:
                continue
            }
        }

        vowels.reverse()

        for i in 0..<indexArr.count {
            let index = indexArr[i]
            let vowel = vowels[i]
            characters[index] = vowel
        }

        return String(characters)
    }
}

let solution = Solution()
solution.reverseVowels("aA")
