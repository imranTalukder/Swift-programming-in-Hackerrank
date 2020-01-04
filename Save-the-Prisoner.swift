import Foundation
var n = Int(readLine()!)!
while n > 0 {
    var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	let a = arr[0]
	let b = arr[1]
	let c = arr[2]
	var sum = ((c + b - 1) % a)
	if sum == 0 {
		sum = a
	}
	
    print("\(sum)")

	n -= 1
}
