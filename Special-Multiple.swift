import Foundation
struct binary {
	var n: Int
	init(n: Int) {
		self.n = n
	}
	func calculation() -> Int{
		let patt = Int(String(n, radix: 2))!
		return patt
	}
}
let t = Int(readLine()!)!
for _ in 1...t {
	let val = Int(readLine()!)!
	var show = 9
	var i = 1
	while show % val != 0 {
		i += 1
		let obj = binary(n: i)
		show = obj.calculation()
		show *= 9
		
	}
	
	print(show)
}