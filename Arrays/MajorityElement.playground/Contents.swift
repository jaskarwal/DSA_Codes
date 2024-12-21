import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    var tempDict = [Int: Int]()
    
    for item in nums {
        if tempDict[item] != nil {
            tempDict[item] = tempDict[item]! + 1
        } else {
            tempDict[item] = 1
        }
    }
    
    for (key, value) in tempDict {
        if value > (nums.count/2) {
            return key
        }
    }
    return 0
}

let nums = [5,5,1,1,1,5,5]

//Output =  5

print(majorityElement(nums))
