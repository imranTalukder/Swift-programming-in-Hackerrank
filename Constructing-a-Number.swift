import Foundation
let t = Int(readLine()!)!
for _ in 1...t {
	let n = Int(readLine()!)!
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	var sum = 0
	for i in 0..<n {
		var v = arr[i]
		while v > 0 {
			sum = sum + v % 10
			v = v / 10
		}
	}
	if sum % 3 == 0 {
		print("Yes")
	}
	else {
		print("No")
	}
}