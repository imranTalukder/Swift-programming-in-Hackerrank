import Foundation
let n = Int(readLine()!)!
var cnt = [Int](repeating: 0, count: 27)
for j in 0..<n {
	let str = readLine()!
	for ch in str.utf8 {
		let dig = Int(ch) - 97
		if cnt[dig] == j {
			cnt[dig] += 1 
		}
	}
}
var res = 0
for i in 0...25 {
	if cnt[i] == n {
		res += 1
	}
}
print(res)