import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var c = 0
    var prod = 1
    var result = nums
    
    for num in nums {
        if num == 0 {
            c = c + 1
        } else {
            prod = prod * num
        }
    }
    
    for i in 0..<nums.count {
        
        if c > 1 {
            result[i] = 0
        } else if c == 1 {
            if nums[i] == 0 {
                result[i] = prod
            } else {
                result[i] = 0
            }
        } else {
            result[i] = prod / nums[i]
        }
    }
    return result
}

var nums = [1,0,3,4]

print(productExceptSelf(nums))
