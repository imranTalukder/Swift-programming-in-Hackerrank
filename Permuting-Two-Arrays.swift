import Foundation
let q = Int(readLine()!)!
for _ in 1...q {
	let nk = readLine()!.components(separatedBy: " ").map { Int($0) }
	let n = nk[0]!
	let k = nk[1]!
	let A = readLine()!.components(separatedBy: " ").map { Int($0)! }
	let B = readLine()!.components(separatedBy: " ").map { Int($0)! }
	let Ap = A.sorted(by: >)
	let Bp = B.sorted(by: <)
	var flag = true
	for i in 0..<n {
		if Ap[i] + Bp[i] < k {
			flag = false
			break
		}
	} 
	if flag {
		print("YES")
	}
	else {
		print("NO")
	}
}