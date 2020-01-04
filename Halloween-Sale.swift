import Foundation
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var p = arr[0]
let d = arr[1]
let m = arr[2]
var s = arr[3]
var cnt = 0
while s >= p {
	cnt += 1
	s = s - p
	if p - d <= m {
		p = m
	}
	else {
		p = p - d
	}
	
}
print(cnt)