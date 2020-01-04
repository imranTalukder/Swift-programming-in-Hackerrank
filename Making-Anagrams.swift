import Foundation
class king {
	var str1: String
	var str2: String
	init(str1: String, str2: String) {
		self.str1 = str1
		self.str2 = str2
	}
	func findResult() -> Int {
		var arr = [Int](repeating: 0, count: 26)
		for ch in str1.utf8 {
			let v = Int(ch) - 97
			arr[v] += 1
		}
		for ch in str2.utf8 {
			let v = Int(ch) - 97
			arr[v] -= 1
		}
		var sum = 0
		for i in 0...25 {
			sum += abs(arr[i])
		}
		return sum
	}
}
let str1 = readLine()!
let str2 = readLine()!
let obj = king(str1: str1, str2: str2)
print(obj.findResult())




