import Foundation
let t = Int(readLine()!)!
for _ in 1...t {

	var n = Int(readLine()!)!
	var sum = 2
	while n > 1 {
		sum = (sum * 2) % 100000
		n -= 1
	}
	print(sum - 1)
}
