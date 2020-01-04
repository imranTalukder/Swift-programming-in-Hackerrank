import Foundation
class output {
	var arr = [[Int]]()
	var h: Int
	var w: Int
	init(arr: [[Int]], h: Int, w: Int) {
		self.arr = arr
		self.h = h
		self.w = w
	
	}
	func leftRight() -> Int {

		var sum1 = 0
		for i in 0..<h {
			sum1 += arr[i][0]
			for j in 0..<w - 1 {
				if arr[i][j] < arr[i][j + 1] {
					sum1 += arr[i][j + 1] - arr[i][j]
				}
			}
		}
		var sum2 = 0
		for i in 0..<w {
			sum2 += arr[0][i]
			for j in 0..<h - 1 {
				if arr[j][i] < arr[j + 1][i] {
					sum2 += arr[j + 1][i] - arr[j][i]
				}
			}
		}
		return 2 * (sum1 + sum2 + h * w)
	}
}

let hw = readLine()!.components(separatedBy: " ").map{ Int($0)}
let h = hw[0]!
let w = hw[1]!
var arr = [[Int]]()
for _ in 1...h {
	let seq = readLine()!.components(separatedBy: " ").map{ Int($0)}
	var inVal = [Int]()
	for i in 0..<w {
		inVal.append(seq[i]!)
	}
	arr.append(inVal)
}
let obj = output(arr: arr, h: h, w: w)
print(obj.leftRight())

