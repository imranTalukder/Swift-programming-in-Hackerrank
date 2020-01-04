import Foundation
var sum = 0
var n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
for value in arr {
	sum = sum + value
}
print(sum, terminator: "")