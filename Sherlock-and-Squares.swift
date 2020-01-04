import Foundation
let q = Int(readLine()!)!
for _ in 1...q {
    var result = 0
    let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	let a = arr[0]
	let b = arr[1]
	
	let aa = Int(sqrt(Double(a)))
	let bb = Int(sqrt(Double(b)))
	result = bb - aa
	if aa * aa == a {
	    result += 1
	}
	print(result)
}
