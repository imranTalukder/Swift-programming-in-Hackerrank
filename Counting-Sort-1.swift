import Foundation
let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var cnt = [Int](repeating: 0, count: 100)
for i in 0..<n {
	let v = arr[i]
	cnt[v] += 1
}
for i in 0...99 {
	print("\(cnt[i])", terminator: " ")
}