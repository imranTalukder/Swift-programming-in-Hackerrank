import Foundation
class calcul {
	var count = 0
	var sum = 0
	var n = 0
	init(n: Int) {
		self.n = n
	}
	
	func digitSum(val: Int) -> Int {
		var nn = val
		var ret = 0
		while nn > 0 {
			let rem = nn % 10
			ret = ret + rem
			nn = nn / 10
		
		}
		return ret
	}

	func primeFactor() {
		while n % 2 == 0 {
			count += 1
			n = n / 2
	
		}
		sum = 2 * count
		var i = 3
		var limit = Int(sqrt(Double(n)))
		while i <= limit {
			count = 0
			while n % i == 0 {
				count += 1
				n = n / i
			}
			if count > 0 {
				sum = sum + digitSum(val: i) * count
				
			}
			i += 2
			limit = Int(sqrt(Double(n)))
		}
		if n > 2 {
			sum = sum + digitSum(val: n)
		}
		
	}
	
}


let n = Int(readLine()!)!
let obj = calcul(n: n)
obj.primeFactor()
let normalDigitSum = obj.digitSum(val: n)
if obj.sum == normalDigitSum {
	print("1")
}
else {
	print("0")
}




