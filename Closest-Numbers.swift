import Foundation
class mainClass {
	var n: Int
	var arr: [Int]
	init(n: Int, arr: [Int]) {
		self.n = n
		self.arr = arr
	}
	func Boom() {
		arr = arr.sorted()
		var diff = abs(arr[0] - arr[1])
		for i in 0..<n - 1 {
			let abc = abs(arr[i] - arr[i + 1])
			diff = min(diff, abc)
		}
		for i in 0..<n - 1 {
			let stateDiff = abs(arr[i] - arr[i + 1])
			if diff == stateDiff {
				print("\(arr[i]) \(arr[i + 1])", terminator: " ")
			}
		}
	}
}
let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map { Int($0)!}
let obj = mainClass(n: n, arr: arr)
obj.Boom()