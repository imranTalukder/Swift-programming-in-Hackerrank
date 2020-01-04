import Foundation
let t = Int(readLine()!)!
for _ in 1...t {
	let n = Int(readLine()!)!
    let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    var sum = 1
	for i in 0..<n - 1 {
		sum = (sum * arr[i]) % 1234567
	}
	print(sum)
}