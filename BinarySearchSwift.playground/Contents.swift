import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

func binarySearch(_ nums: [Int],_ target: Int) -> Int {
    // If Target is found return Target Index else return -1
    
    // MARK: - Solution 1
    var lower = 0
    var higher = nums.count - 1

    while lower <= higher {
        let mid = (lower + higher)/2

        if nums[mid] == target {
            return mid
        } else {
            nums[mid] < target ? (lower = mid+1) : (higher = mid-1)
        }
    }
    return -1
    
    // MARK: - Solution 2
    
   // return nums.firstIndex(where: {$0 == target}) ?? -1
}

let target = 13
let tempAr = [0,2,5,10,13,15,19]

let itemInd =  binarySearch(tempAr, target)
if itemInd != -1 {
    print("Element Found at \(itemInd)")
} else {
    print("Element Not Found")
}
