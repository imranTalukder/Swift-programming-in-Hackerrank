import Foundation
class calculation {
	var m1 = 0
	var m2 = 0
	init(m1: Int, m2: Int) {
		self.m1 = m1
		self.m2 = m2
	}
	func multiplication() -> Int {
		return m1 * m2
	}

}

let t = Int(readLine()!)!
var m1 = 10000000000
var m2 = 10000000000
for _ in 1...t {
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0) }
	m1 = min(arr[0]!, m1)
	m2 = min(arr[1]!, m2)

}
let obj = calculation(m1: m1, m2: m2)
print(obj.multiplication())