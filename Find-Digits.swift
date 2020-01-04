import Foundation
var t = Int(readLine()!)!
var cnt = 0
for _ in 1...t {
    let val = Int(readLine()!)!
	var n = val
	while n > 0 {
	    let d = n % 10
		n = n / 10
		if d > 0 {
		    if val % d == 0 {
			    cnt += 1
			}
		}
	}
	print("\(cnt)")
	cnt = 0
}