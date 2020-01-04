import Foundation
let n = Int(readLine()!)!
for _ in 1...n {
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	print(arr[0] + arr[1] - arr[2])
}
