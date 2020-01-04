import Foundation
class output {
	var arr = [[Int]]()
	var n: Int
	init(arr: [[Int]], n: Int) {
		self.arr = arr
		self.n = n
	}
	
	func show() {
		for i in 0..<n {
			for j in 0..<n {
				var p = 0
				if (i > 0 && j > 0 && i < n - 1 && j < n - 1) {
					let val = arr[i][j]
					if val > arr[i][j + 1] && val > arr[i][j - 1] && val > arr[i - 1][j] && val > arr[i + 1][j] {
						print("X",terminator: "")
						p = 1
					}
				}
				if p == 0 {
					print("\(arr[i][j])",terminator: "")
				}
			}
			print("")
		}
	}
}
let n = Int(readLine()!)!
var arr = [[Int]]()
for _ in 0..<n {
	let row = readLine()!
	var pp = [Int]()
	for ch in row {
		pp.append(Int(String(ch))!)
	}
	arr.append(pp)
	
}
let ins = output(arr: arr, n: n)
ins.show()