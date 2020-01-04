import Foundation
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let a = arr[0]
let b = arr[1]
let aa = a % 2
let bb = b % 2
var sum = 1
if aa == 0 && bb == 0 {
	sum = a * b / 4
}
else if aa == 0 && bb == 1 {
	sum = (a * (b - 1) / 4) + a / 2
}
else if aa == 1 && bb == 0 {
	sum = (b * (a - 1) / 4) + b / 2
}
else {
	sum = ((a - 1) * (b - 1) / 4) + a / 2 + b / 2 + 1
}
print(sum)