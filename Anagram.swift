import Foundation
class anagram {
	var str: String
	var n: Int
	init(input: String, Len: Int) {
		str = input
		n = Len
	}
	func show() -> Int {
		if n % 2 == 1 {
			return (0 - 1)
		}
		var Left = [Int](repeating: 0, count: 26)
		var Right = [Int](repeating: 0, count: 26)
		var i = 0
		for ch in str.utf8 {
			let val = Int(ch) - 97
			if i <= n / 2 - 1 {
				Left[val] += 1
			}
			else {
				Right[val] += 1
			}
			i += 1
		}
		var sum = 0
		for i in 0..<26 {
			sum += abs(Left[i] - Right[i])
		}
		return sum / 2
	}
}
let t = Int(readLine()!)!
for _ in 1...t {
	let str = readLine()!
	let cnt = str.count 
	let obj = anagram(input: str, Len: cnt)
	print(obj.show())
}





		