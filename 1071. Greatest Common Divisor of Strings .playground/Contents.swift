import Foundation

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    guard str1 + str2 == str2 + str1 else { return "" }
    let gcdLen = gcd(max(str1.count, str2.count), min(str1.count, str2.count))
    return String(str1.prefix(gcdLen))
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

gcdOfStrings("ABABAB", "ABAB")
