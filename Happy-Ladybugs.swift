import Foundation
class Vendetta {
	var str: String
	var n: Int
	init(str: String, n: Int) {
		self.str = str
		self.n = n
	}
	func findResult() -> String {
		var arr = [Int](repeating: 0, count: 26)
		var arr2 = [Int]()
		var underSpace = 0
		if n == 1 {
			if str == "_" {
				return "YES"
			}
			return "NO"
		}
		for ch in str.utf8 {
			let v = Int(ch)
			if v == 95 {
				underSpace = 1
			}
			else {
				arr[v - 65] += 1
			}
			arr2.append(v)
		}
		for i in 0...25 {
			if arr[i] == 1 {
				return "NO"
			}
		}
		if underSpace == 1 {
			return "YES"
		}
		var chk = 0
		for i in 0..<n - 1 {
			if chk == 0 && arr2[i] != arr2[i + 1] {
				return "NO"
			}
			if arr2[i] == arr2[i + 1] {
				chk += 1
			}
			if arr2[i] != arr2[i + 1] {
				chk = 0
			}
		}
		return "YES"
	}
}
let t = Int(readLine()!)!
for _ in 1...t {
	let n = Int(readLine()!)!
	let str = readLine()!
	let obj = Vendetta(str: str, n: n)
	print(obj.findResult())
}







