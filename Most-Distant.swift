import Foundation
var n = Int(readLine()!)!
var my1 = 0
var my2 = 0
var mx1 = 0
var mx2 = 0
while n > 0 {
	let arr = readLine()!.components(separatedBy: " ").map { Int( $0)! }
	if arr[0] == 0 {
		my1 = max(arr[1], my1)
		my2 = min(arr[1], my2)
	}
	else {
		mx1 = max(arr[0], mx1)
		mx2 = min(arr[0], mx2)
	}
	
	n -= 1
}


let my = max(my1, (-1) * my2)
let mx = max(mx1, (-1) * mx2)
let dy1x1 = sqrt(Double(my * my) + Double(mx * mx))
let res = max(Double(max(abs(my1 - my2), abs(mx1 - mx2))), dy1x1)
print(res)
