import Foundation
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)!}
let x1, x2, v1, v2, sum: Int
x1 = arr[0]
v1 = arr[1]
x2 = arr[2]
v2 = arr[3]
var sum1 = x2 - x1
var sum2 = v1 - v2
if sum2 == 0 {
    print("NO")
}
else if sum1 % sum2 == 0 {
    let p = sum1 / sum2
	if p > 0 {
	    print("YES")
	}
	else {
	    print("NO")
	}
}
else {
    print("NO")
}
