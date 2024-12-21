import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    var temp = [Int]()
    var i = 0
    var j = 0
    
    while i < m {
        temp.append(nums1[i])
        i = i + 1
    }
    
    while j < n {
        temp.append(nums2[j])
        j = j + 1
    }
    
    temp.sort()
    nums1 = temp
}

var nums1 = [1,2,3,0,0,0]
let m = 3
let n = 2
let nums2 = [2,5,6]

merge(&nums1, m, nums2, n)

print(nums1)

// Output -: [1, 2, 2, 3, 5]
