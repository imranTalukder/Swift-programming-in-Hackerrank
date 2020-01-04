import Foundation
var maxValue = -1
var minValue = 100000000000
var sum = 0
var m = 0
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)!}
for m in arr {
	if m > maxValue {
		maxValue = m	
	}
	if m < minValue {
		minValue = m	
	}
	sum += m
}
print("\(sum - maxValue) \(sum - minValue)")