import Foundation
class anagram {
	var str1: String
	var str2: String
	init(str1: String, str2: String) {
		self.str1 = str1
		self.str2 = str2
	}
	func show() -> String {
		var Left = [Int](repeating: 0, count: 26)
		var Right = [Int](repeating: 0, count: 26)
		for ch in str1.utf8 {
			let val = Int(ch) - 97
			Left[val] += 1
		}
		for ch in str2.utf8 {
			let val = Int(ch) - 97
			Right[val] += 1
		}
		for i in 0..<26 {
			if Left[i] != 0 && Right[i] != 0 {
				return "YES"
			}
		}
		return "NO"
	}
}
let t = Int(readLine()!)!
for _ in 1...t {
	let str1 = readLine()!
	let str2 = readLine()!
	let obj = anagram(str1: str1, str2: str2)
	print(obj.show())
}





		