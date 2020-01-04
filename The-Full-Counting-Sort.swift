import Foundation
class countAndInsertion {
	var strList: [String]
	var n: Int
	init(strList: [String], n: Int){
		self.strList = strList
		self.n = n
	}
	func numberRemove(text: String) -> String {
		var i = 0
		for ch in text {
			i += 1
			if ch == " " {
				break
			}
		}
		return String(text.dropFirst(i))
	}
	
	
	func calculation() {
		var sortedString = strList.sorted(by: { $0.prefix(2) < $1.prefix(2)})
		var chkk = [Int](repeating: 0, count: n / 2 + 1)
		for i in 0..<n {
			var p = 0
			for j in 0..<(n / 2) {
				if sortedString[i] == strList[j] && chkk[j] == 0 {
					print("-", terminator: " ")
					p = 1
					chkk[j] = 1
					break
				}
			}
			if p == 0 {
				let str = numberRemove(text: sortedString[i])
				print("\(str)", terminator: " ")
			}
		}
	}
}

let n = Int(readLine()!)!
var strList = [String]()
for _ in 1...n {
	let str = readLine()!
	strList.append(str)
}
let obj = countAndInsertion(strList: strList, n: n)
obj.calculation()