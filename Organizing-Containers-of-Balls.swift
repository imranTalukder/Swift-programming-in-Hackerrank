import Foundation
let q = Int(readLine()!)!
for _ in 1...q {
	let n = Int(readLine()!)!
	var a = Array(repeating: 0, count: n)
	var b = Array(repeating: 0, count: n)
	for i in 0..<n {
		let nn = readLine()!.components(separatedBy: " ").map{ Int($0)! }
		for j in 0..<n {
			a[i] += nn[j]
			b[j] += nn[j]
		}
	}
	a.sort()
	b.sort()
	for i in 0..<n {
		if(a[i] != b[i]) {
			print("Impossible")
			break
		}
		if i == n - 1 {
			print("Possible")
		}
	}
}