import Foundation
let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var chk = [Int](repeating: 0, count: 100005)
var preLocation = [Int](repeating: 0, count: 100005)
var minVal = 10000005
for i in 0..<n {
	let val = arr[i]
	chk[val] += 1
	if chk[val] == 1 {
	    preLocation[val] = i
	}
	else {
		minVal = min(i - preLocation[val], minVal)
		preLocation[val] = i
	}
	
}
if minVal == 10000005 {
	print("-1")
}
else {
	print(minVal)
}
		
		