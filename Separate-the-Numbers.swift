import Foundation
class notEasyProblem {
	var mainStr: String
	var mainLen: Int
	init(mainStr: String, mainLen: Int) {
		self.mainStr = mainStr
		self.mainLen = mainLen
	}
	func permutationF(inStr: String) -> Int {
		var str = inStr
		var Len = str.count
		var incValue = Int(str)! + 1
		while Len < mainLen {
			str = str + String(incValue)
			incValue += 1
			Len = str.count
		}
		if Len == mainLen && str == mainStr {
			return 1
		}
		return 0
	}
	func show() {
		for i in 1...mainLen / 2 {
			let inStr = mainStr.dropLast(mainLen - i)
			let chk = permutationF(inStr: String(inStr))
			if chk == 1 {
				print("YES \(inStr)")
				return
			}
		
		}
		print("NO")
	
	}

}
let q = Int(readLine()!)!
for _ in 1...q {
	let originalString = readLine()!
	let originLeng = originalString.count
	if originLeng == 1 {
		print("NO")
	}
	else {
		let obj = notEasyProblem(mainStr: originalString, mainLen: originLeng)
		obj.show()
	}
}