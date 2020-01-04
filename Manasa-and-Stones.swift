import Foundation
let t = Int(readLine()!)!
for _ in 1...t {
	let n = Int(readLine()!)!
	let a = Int(readLine()!)!
	let b = Int(readLine()!)!
	var startValue = min(a,b) * (n - 1)
	let ins = abs(a - b)
	while startValue <= (n - 1) * max(a,b) {
		print("\(startValue)", terminator: " ")
		startValue = startValue + ins
		if ins == 0 {
			break
		}
	}
	print("")
	
}
	
