import Foundation
class output {
	var str: String
	init(str: String) {
		self.str = str
	}
	
	func deletion() -> Int {
		var cnt = 0
		var ctr = [Character]()
		for ch in str {
			ctr.append(ch)
		}
		let strSize = ctr.count
		for i in 1..<strSize {
			if ctr[i] == ctr[i - 1] {
				cnt += 1
			}
		}
		return cnt
	}
}

let n = Int(readLine()!)!
for _ in 1...n {
	let str = readLine()!
	let obj = output(str: str)
	print(obj.deletion())
}