import Foundation
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = arr[0]
let k = arr[1]
var sum = 100
var i = 0
var arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
while i < n {
    if arr2[i] == 1 {
	    sum -= 3
	}
	else {
	    sum -= 1
	}
	i += k
}
print("\(sum)")