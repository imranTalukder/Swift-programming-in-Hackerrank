import Foundation
let nA = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = nA[0]
let t = nA[1]
var sum = 0
for _ in 1...t {
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	sum += (arr[1] - arr[0] + 1) * arr[2]
}
print(sum / n)