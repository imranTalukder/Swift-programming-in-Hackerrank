import Foundation
let p = Int(readLine()!)!
let q = Int(readLine()!)!

func kaprekar (pp: Int) -> Bool {
	var val = pp
	var firstDigit = 0
	while val > 0 {
		firstDigit += 1
		val = val / 10
	}
	var sqre = pp * pp
	let sqreString = String(sqre)
	var totalDigit = 0
	while sqre > 0 {
		sqre = sqre / 10
		totalDigit += 1
	}
	var rSum = 0
	var LSum = 0
	let firstDrop = totalDigit - firstDigit
	let substring = sqreString.dropFirst(firstDrop)
	rSum = Int(substring)!
	let substring2 = sqreString.dropLast(firstDigit)
	LSum = Int(substring2)!
	
	if (rSum + LSum) == pp {
		return true
	}
	else {
		return false
	}
}


var chk = true

for i in p...q {
	if(i == 1) {
		print("\(i) ", terminator:"")
		chk = false
	}
    if(i > 3) {
		if kaprekar(pp: i){
			print("\(i) ", terminator:"")
			chk = false
		}
	}
}
if chk {
    print("INVALID RANGE")
}