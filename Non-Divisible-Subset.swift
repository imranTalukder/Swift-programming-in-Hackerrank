import Foundation
let arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = arr2[0]
let k = arr2[1]
var x = 0
var newBe = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var digitCount = Array(repeating: 0, count: k)
for i in 0..<n {
    x = newBe[i] % k
    digitCount[x] += 1
}
var cnt = min(digitCount[0], 1)
x = k / 2
var i = 1
if k % 2 == 0 {
    while i < x {
	    cnt += max(digitCount[i], digitCount[k - i])
		i += 1
	}
	cnt += 1
}
else {
    while i <= x {
	    cnt += max(digitCount[i], digitCount[k - i])
		i += 1
	}
}

print(cnt)

