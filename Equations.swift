import Foundation
class calculation {
	var prime = [Int](repeating: 0, count: 1000006)
	let n: Int
	var ans = 1
	init(n: Int) {
		self.n = n
	}
	func sieve() {
		var p = 2
		while p * p <= 1000000 {
			if prime[p] == 0 {
				var i = p * 2
				while i <= 1000000 {
					prime[i] = 1
					i += p
				}
			}
			p += 1
		}
	}
	
	func factors() {
		for i in 2...n {
			if prime[i] == 0 {
				var pp = 1
				var cnt = 0
				var x = Int(pow(Double(i),Double(pp)))
				while x <= n {
					cnt = cnt + (n / (Int(pow(Double(i),Double(pp)))))
					pp += 1
					x = Int(pow(Double(i),Double(pp)))
				}
				ans = (ans * (2 * cnt + 1)) % 1000007
			}
		}
	}	
}

let n = Int(readLine()!)!
let obj = calculation(n: n)
obj.sieve()
obj.factors()
print(obj.ans)


