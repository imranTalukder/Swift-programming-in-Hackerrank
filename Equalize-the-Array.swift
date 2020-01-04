import Foundation
let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var digitCount = Array(repeating: 0, count: 101)
for i in 0..<n {
    let p = arr[i]
	digitCount[p] += 1
}
digitCount.sort()
var sum = 0
for i in 0..<100 {
    sum += digitCount[i]
}
print(sum)