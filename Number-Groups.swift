import Foundation
struct sumCalculation {
	var g: Int
	init(g: Int) {
		self.g = g
	}
	mutating func sum() {
		g = g * g * g
	}
}
let g = Int(readLine()!)!
var obj = sumCalculation(g: g)
obj.sum()
print(obj.g)