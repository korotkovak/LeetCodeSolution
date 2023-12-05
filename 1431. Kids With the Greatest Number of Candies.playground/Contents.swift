import Foundation

let candies = [2,3,5,1,3]
let extraCandies = 3

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var output = [Bool]()
    let maxNumber = candies.max() ?? .zero

    for candy in candies {
        let extra = candy + extraCandies

        if extra >= maxNumber {
            output.append(true)
        } else {
            output.append(false)
        }
    }
    return output
}

kidsWithCandies(candies, extraCandies)
