import PlaygroundSupport

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var temp = [Int]()
    
    for i in 0..<nums.count {
        if !temp.contains(nums[i]){
            temp.append(nums[i])
        }
    }
    return temp.count
}

var nums = [0,0,1,1,1,2,2,3,3,4]

print(removeDuplicates(&nums))
