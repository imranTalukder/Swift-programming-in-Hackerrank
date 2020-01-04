import Foundation
class calculationForChocolate {
	var x: Int
	var y: Int
	var z: Int
	let n: Int
	let c: Int
	let m: Int
	var chocklate: Int
	var bar: Int
	var res: Int
	
	init(x: Int, y: Int, z: Int)
	{
		self.x = x
		self.y = y
		self.z = z
		self.n = x
		self.c = y
		self.m = z
		self.chocklate = n / c
		self.bar = chocklate
		self.res = chocklate
		
	}
	
	
	func justLoop() -> Void {
		
		while bar >= m {
			chocklate = bar / m
			bar = chocklate + (bar % m)
			res += chocklate
			
	
		}
	}
	
}
let t = Int(readLine()!)!
for _ in 1...t {
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	let obj = calculationForChocolate(x: arr[0], y: arr[1], z: arr[2])
	obj.justLoop()
	print(obj.res)
}