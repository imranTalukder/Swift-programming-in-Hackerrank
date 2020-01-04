import Foundation
let n = Int(readLine()!)!
var arr = [Int]()
arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var countPositive = 0.0, countNegative = 0.0,countZero = 0.0
var i: Int
for i in 0..<n {
    if arr[i] > 0 {
	    countPositive += 1
	}
	if arr[i] < 0 {
	    countNegative += 1
	}
	if arr[i] == 0 {
	    countZero += 1
	}
}
var all = countNegative + countPositive + countZero
print("\(countPositive/all)\n\(countNegative/all)\n\(countZero/all)")   
