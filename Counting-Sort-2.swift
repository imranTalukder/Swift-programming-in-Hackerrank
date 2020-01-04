import Foundation
let n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)!}
arr = arr.sorted()
for i in 0..<n {
	print("\(arr[i])", terminator: " ")
}