import Foundation
var arr = [[Int]]()
var n = Int(readLine()!)!
var i: Int
var k: Int
var j: Int
var sum1 = 0
var sum2 = 0
for _ in 0..<n {
    arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)!})
}
j = 0
for i in 0..<n {
    sum1 = sum1 + arr[i][j]
	j = j + 1
}
j = n - 1
for i in 0..<n {
    sum2 = sum2 + arr[j][i]
	j = j - 1
}
var diff = sum1 - sum2
print(abs(diff))