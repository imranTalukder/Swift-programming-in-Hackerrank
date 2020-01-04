import Foundation
let t = Int(readLine()!)!
for _ in 1...t {
	let n = Int(readLine()!)!
	var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	arr.sort()
	var res = 1
	var p: Int
	var i = n - 1
	while i >= 0 {
		p = (i + 1) - arr[i]
		if p <= 0 {
			res = 0
			break;
		}
		else {
			res = (res * p) % 1000000007
		}
		i -= 1
	}
	print(res)
}