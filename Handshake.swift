import Foundation
let t = Int(readLine()!)!
for _ in 1...t {
	var n = Int(readLine()!)!
	if(n == 1)
	{ 
		print("0")
	}
	else {
		var sum1 = 1
		var sum2 = 1
		let maxChoose = max(n - 2, 2)
		var minChoose = min(n - 2, 2)
		while (n > maxChoose) {
			sum1 *= n
			n -= 1
		
		}
		while (minChoose > 1) {
			sum2 *= minChoose
			minChoose -= 1
		}
		let res = sum1 / sum2
		print("\(res)")
	
	}
}