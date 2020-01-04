import Foundation
let n = Int(readLine()!)!
let res = {(n: Int) -> Int in 
	var sum = 1
	var incr = 3
	while sum <= n {
		sum += incr
		incr *= 2
	}
	if sum > n {
	 sum = sum - incr / 2
	}
	return sum
}
let finalRes = 2 * res(n) - n + 2
print(finalRes)