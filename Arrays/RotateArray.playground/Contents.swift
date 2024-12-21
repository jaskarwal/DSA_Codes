import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
    
    guard !nums.isEmpty ||  k > 0  else { return }
    
    //pointers
    let n = nums.count
    let k = k % n
    // Reverse entire array
    nums.reverse()
    
    // Reverse first k elements
    nums[0..<k].reverse()
    
    // Reverse remaining n-k elements
    nums[k..<n].reverse()
    print(nums)
}

var nums = [-1,-100,3,99]
rotate(&nums, 3)


