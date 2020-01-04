import Foundation
let s = readLine()!
let n = Int64(readLine()!)!
var aCount = Int64(0)
for ch in s {
    if ch == "a" {
	    aCount += 1
	}
}
var res = n / Int64(s.count) * aCount
var checkk = n % Int64(s.count)
for ch in s {
    if (checkk > 0 && ch == "a") {
	    res += 1
	}
	checkk -= 1
}
print(res)
    