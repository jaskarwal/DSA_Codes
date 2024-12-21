import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    
    var temp = [Int]()
    
    for item in nums {
        if item != val {
            temp.append(item)
        }
    }
    nums = temp
    return nums.count
}

//var nums = [3,2,2,3]
//let val = 3
// Output =  2 elements

var nums = [0,1,2,2,3,0,4,2]
let val = 2
// Output =  5 elements

print(removeElement(&nums, val))
