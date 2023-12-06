import Foundation

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    guard n != 0 else { return true }

    var arr = [0] + flowerbed + [0]
    var count = 0

    for index in 1..<arr.count - 1 {
        let left = arr[index - 1] == 0
        let right = arr[index + 1] == 0

        if arr[index] == 0 && left && right {
            count += 1
            arr[index] = 1

            if count == n {
                return true
            }
        }

    }
    return false
}

canPlaceFlowers([1,0,0,0,1], 1)
