import Foundation
class output {
	var arr = [Int]()
	var n: Int
	init(arr: [Int], n: Int)
	{
		self.arr = arr
		self.n = n
	}
	func insertionSort() -> Int {
		var cnt = 0
		for i in 1..<n {
			let val = arr[i]
			var j = i
			while val < arr[j - 1]{
				arr[j] = arr[j - 1]
				cnt += 1
				j -= 1
				if j == 0 {
					break
				}
			}
			arr[j] = val
		}
		
		return cnt
	}
}
let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)!}
let obj = output(arr: arr, n: n)
print(obj.insertionSort())