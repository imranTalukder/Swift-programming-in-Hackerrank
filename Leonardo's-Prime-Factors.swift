import Foundation
let n = 100
var primeArray = [Int]()
var chk = [Bool](repeating: true, count: n + 1)

func primeNumbers() {
	var p = 2
	while (p * p) <= n {
		if chk[p] == true {
			var i = p * p
			while i <= n {
				chk[i] = false
				i += p
			}
		
		}
		p += 1
	}
	for i in 2...n {
		if chk[i] {
			primeArray.append(i)
		}
	}
}

primeNumbers()


let q = Int(readLine()!)!

for _ in 1...q {
	var m = Int(readLine()!)!
	var cnt = -1
	var s = 0
	
	while m > 0 {
		m = m / primeArray[s]
		cnt += 1
		s += 1
	}
	print(cnt)
}