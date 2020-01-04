import Foundation
class king {
	var str: String 
	var n: Int
	init(str: String, n: Int) {
		self.str = str
		self.n = n
	}
	func resultShow() -> Int {
		var arr = [Character]()
		for ch in str {
			arr.append(ch)
		}
		var cnt = 0
		var i = 0
		while i <= n - 3 {
			if arr[i] == "0" {
				if arr[i + 1] == "1" {
					if arr[i + 2] == "0" {
						cnt += 1
						i += 3
					}
					else {
						i += 3
					}
				}
				else {
					i += 1
				}
			}
			else {
				i += 1
			}
		}
		return cnt
	}
}
let n = Int(readLine()!)!
let str = readLine()!
let obj = king(str: str, n: n)
print(obj.resultShow())