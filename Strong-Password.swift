import Foundation
let n = Int(readLine()!)!
let str = readLine()!

let res = { () -> Int in
	var digit = 0
	var lower = 0
	var upper = 0
	var special = 0
	for ch in str {
		if (ch == "!" || ch == "@" || ch == "#" || ch == "$" || ch == "%" || ch == "^" || ch == "&" || ch == "*" || ch == "(" || ch == ")" || ch == "-" || ch == "+") {
			special = 1
		}
		if ch.isUppercase {
			upper = 1
		}
		if ch.isLowercase {
			lower = 1
		}
		if UnicodeScalar(String(ch))!.value >= 47 && UnicodeScalar(String(ch))!.value <= 57 {
			digit = 1
		}
	}
	let miss = 4 - digit - lower - upper - special
	if miss >= 6 - n {
		return miss
	}
	return (6 - n)
}
print(res())