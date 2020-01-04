import Foundation
class Fun {
	var str: String
	init(str: String) {
		self.str = str
	}
	func calculation() -> String {
		var arr1 = [Int]()
		var chk = [Int]()
		var i = 0
		for ch in str.utf8 {
			let val = Int(ch)
			arr1.append(val)
			i += 1
		}
		for j in 1...i - 1 {
			let v = arr1[j] - arr1[j - 1]
			chk.append(v)
		}
		let chk2 = Array(chk.reversed())
		for k in 0..<i - 1 {
			if chk[k] == chk2[k] || chk[k] == (0 - 1) * chk2[k] {
				continue
			}
			else {
				return "Not Funny"
			}
		}
		return "Funny"
	}
}
let q = Int(readLine()!)!
for _ in 1...q {
	let str = readLine()!
	let obj = Fun(str: str)
	print(obj.calculation())
}