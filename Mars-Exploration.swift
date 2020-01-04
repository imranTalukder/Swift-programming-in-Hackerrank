import Foundation
class output {
	var str: String
	let vv: [Character] = ["S", "O", "S"]
	init(str: String) {
		self.str = str
	}
	func check() -> Int {
		var i = 0
		var cnt = 0
		for ch in str {
			if ch != vv[i] {
				cnt += 1
			}
			i += 1
			if i == 3 {
				i = 0
			}
		}
		return cnt
	
	}
}
let str = readLine()!
let obj = output(str: str)
let res = obj.check()
print(res)