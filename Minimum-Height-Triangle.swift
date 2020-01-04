import Foundation
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let b = arr[0]
let a = arr[1]
var sum1 = 0.0
var sum2 = 0

sum1 = 2.0 * Double(a) / Double(b)
sum2 = 2 * a / b
if Double(sum2) == sum1 {
	print(sum2)
}
else {
	print("\(sum2 + 1)")
}

