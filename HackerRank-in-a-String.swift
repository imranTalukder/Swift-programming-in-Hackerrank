import Foundation
class output {
	var str: String
	let chk: [Character] = ["h", "a", "c", "k", "e", "r", "r", "a", "n", "k"]
	init(str: String) {
		self.str = str
	}
	func fnd() -> String {
		var i = 0
		for ch in str {
			if ch == chk[i] {
				i += 1
			}
			if i == 10 {
				break
			}
		}
		if i == 10 {
			return "YES"
		}
		return "NO"
	}
}
let n = Int(readLine()!)!
for _ in 1...n {
	let str = readLine()!
	let obj = output(str: str)
	print(obj.fnd())
}