import Foundation
class calculation {
	var arr = [Int]()
	init(arr: [Int]) {
		self.arr = arr
	}
	
	func gcd(a: Int, b: Int) -> Int {
		if b == 0 {
			return a 
		}
		return gcd(a: b, b: a % b)
	
	}
	func check() -> String {
		let n = arr.count
		
		if n == 1 {
			if arr[0] == 1 {
				return "YES"
			}
			else {
				return "NO"
			}
		}
		
		
		if n > 1 {
			var i = 1
			var g = arr[0]
			while i < n {
				g = gcd(a: arr[i], b: g)
				i += 1
			
			}
			if g >= 2 {
				return "NO"
			}
		}
		 
		return "YES"
	}

}

let t = Int(readLine()!)!

for _ in 1...t {
	let n = Int(readLine()!)!
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0) }
	var arr2 = [Int]()
	for i in 0..<n {
		arr2.append(arr[i]!)
	}
	let obj = calculation(arr: arr2)
	print(obj.check())
	
}