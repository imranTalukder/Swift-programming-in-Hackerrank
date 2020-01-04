import Foundation
struct mainStruct {
	var n: Int
	var money: Int
	var costs: [Int]
	init(money: Int, n: Int, costs: [Int]) {
		self.n = n
		self.money = money
		self.costs = costs
	}
	
	func Boom() {
		for i in 0..<n - 1 {
			var p = 0
			for j in i + 1..<n {
				if costs[i] >= money {
					break
				}
				else if costs[i] + costs[j] == money {
					print("\(i + 1) \(j + 1)")
					p = 1
				}
			}
			if p == 1 {
				break
			}
		}
	}
}
let t = Int(readLine()!)!
for _ in 1...t {
	let m = Int(readLine()!)!
	let n = Int(readLine()!)!
	let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }
	
	let obj = mainStruct(money: m, n: n, costs: arr)
	obj.Boom()
}
	
	