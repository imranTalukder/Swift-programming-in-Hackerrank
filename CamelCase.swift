import Foundation
class output {
	var str: String
	init(str: String) {
		self.str = str
	}
	
	func numberOfWord() {
		var cnt = 1
		for ch in str {
			if ch.isUppercase {
				cnt += 1
			}
		}
		print(cnt)
	}
}

let str = readLine()!
let obj = output(str: str)
obj.numberOfWord()




