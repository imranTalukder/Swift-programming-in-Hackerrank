import Foundation
let t = Int(readLine()!)!
for _ in 1...t {
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	var n = arr[0]
	let k = arr[1]
	var realArray = [Int]()
	var first = n - 1
	var second = 0
	var p = 1
	while(n > 0) {
		if p == 1 {
			realArray.append(first)
			first -= 1
			p = 0
		}
		else {
			realArray.append(second)
			second += 1
			p = 1
		}
		n -= 1
	}
	
	print(realArray.index { $0 == k }!)
	
}