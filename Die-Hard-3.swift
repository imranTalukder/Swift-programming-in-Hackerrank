import Foundation
class dieHard {
	var rem: Int
	var c: Int
	init(rem: Int, c: Int)
	{
		self.rem = rem
		self.c = c
	}
	func result() -> Int 
	{
		let res = c % rem
		return res
	}
}
let t = Int(readLine()!)!
for _ in 1...t {
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	let a = arr[0]
	let b = arr[1]
	let c = arr[2]
	let rem = {(a: Int, b: Int) -> Int in 
		var aa = a
		var bb = b
		while bb != 0 {
			
			let temp = aa % bb
			aa = bb
			bb = temp
		}
		return aa
	}
	let obj = dieHard(rem: rem(a, b), c: c)
	let chk = obj.result()
	if c > max(a, b) {
		print("NO")
	}
	else if chk == 0 {
		print("YES")
	}
	else {
		print("NO")
	}
}
