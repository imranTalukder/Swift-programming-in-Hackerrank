import Foundation
let n = Int(readLine()!)!
let str = readLine()!
let k = Int(readLine()!)!

let res = {() -> String in
	var chList = [Character]()
	for ch in str.utf8 {
		var val = Int(ch)
		if val >= 65 && val <= 90 {
			val += k
			while val > 90 {
				val -= 26
			}
		}
		else if val >= 97 && val <= 122 {
			val += k
			while val > 122 {
				val -= 26
			}
		}
		let c = Character(UnicodeScalar(val)!)
		chList.append(c)
	}
	return String(chList)
}
print(res())