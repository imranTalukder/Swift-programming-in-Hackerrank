import Foundation
class calculation {
	var m1 = [Int]()
	var m2 = [Int]()
	var m3 = [Int]()
	init(m1: [Int], m2: [Int], m3: [Int]) {
		self.m1 = m1
		self.m2 = m2
		self.m3 = m3
	}
	func check() -> String {
		let m11 = m1.max()!
		let m12 = m1.min()!
		let m21 = m2.max()! 
		let m22 = m2.min()!
		let m31 = m3.max()! 
		let m32 = m3.min()! 
		
		
		if m11 == m12 || m21 == m22 || m31 == m32 {
			return "YES"
		}
		return "NO"
		
	}

}

let t = Int(readLine()!)!

for _ in 1...t {
	var m1 = [Int]()
	var m2 = [Int]()
	var m3 = [Int]()
	for _ in 1...4 {
		let arr = readLine()!.components(separatedBy: " ").map{ Int($0) }
		m1.append(arr[0]!)
		m2.append(arr[1]!)
		m3.append(arr[2]!)

	}
	let obj = calculation(m1: m1, m2: m2, m3: m3)
	print(obj.check())
}