import Foundation
let t = Int(readLine()!)!
for _ in 1...t {
	let input = readLine()!.components(separatedBy: " ").map{ Int($0) }
	let n = input[0]!
	let k = input[1]!
	var flag = true
	var res = [Int](repeating: 0, count: n )
	for i in 1...n {
		if k == 0 {
			res[i - 1] = i
		}
		else if n % (k * 2) != 0 {
			print("-1")
			flag = false
			break
		}
		else {
			if res[i - 1] == 0 {
				let val1 = i + k
				res[i - 1] = val1
				res[val1 - 1] = i
			}
		}
	}
	if flag {
		for i in 0..<n {
			print("\(res[i])", terminator: " ")
		}
		print()
	}
}