import Foundation
class output {
	var widths = [Int]()
	var i: Int
	var j: Int
	init(widths: [Int], i: Int, j: Int) {
		self.widths = widths
		self.i = i 
		self.j = j
	
	}
	func minValue() -> Int {
		var res = 10
		for k in i...j {
			res = min(res, widths[k])
		}
		return res
	}
}

let arr = readLine()!.components(separatedBy: " ").map{ Int($0) }
let n = arr[0]!
let t = arr[1]!
var width = [Int]()
var widths = readLine()!.components(separatedBy: " ").map{ Int($0) }
for i in 0..<n {
	width.append(widths[i]!)
}
for _ in 1...t {
	let arr2 = readLine()!.components(separatedBy: " ").map{ Int($0) }
	let i = arr2[0]!
	let j = arr2[1]!
	let obj = output(widths: width, i: i, j: j)
	print(obj.minValue())


}