import Foundation
class calculation {
	var m1 = [Int]()
	var m2 = [Int]()
	init(m1: [Int], m2: [Int]) {
		self.m1 = m1
		self.m2 = m2
	}
	func check() -> String {
		let m11 = m1.max()
		let m12 = m1.min()
		let m21 = m2.max()
		let m22 = m2.min()
		
		if m11 == m12 || m21 == m22 {
			return "YES"
		}
		return "NO"
		
	}

}

let t = Int(readLine()!)!
var m1 = [Int]()
var m2 = [Int]()
for _ in 1...t {
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0) }
	m1.append(arr[0]!)
	m2.append(arr[1]!)

}
let obj = calculation(m1: m1, m2: m2)
print(obj.check())