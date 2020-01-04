import Foundation
class output {
	var n: Int
	var k: Int
	var arr = [Int]()
	init(n: Int, k: Int, arr: [Int]) {
		self.n = n
		self.k = k
		self.arr = arr
	}
	func calculation() -> Int {
		var page = 1
		var cnt = 0
		for i in 0..<n {
			var p = arr[i]
			var start = 1
			var end = p > k ? start + k - 1 : start + p - 1
			while p >= k {
				if page >= start && page <= end {
					cnt += 1
					
				}
				page += 1
				p = p - k
				start = end + 1
				end = p > k ? start + k - 1 : start + p - 1
			
			}
			if p < k && p != 0 {
				if page >= start && page <= end {
					cnt += 1
					
				}
				page += 1
			}
			
		}
		return cnt
	}
}

let ar = readLine()!.components(separatedBy: " ").map{ Int($0) }
let n = ar[0]!
let k = ar[1]!
var arr = [Int]()
let arr2 = readLine()!.components(separatedBy: " ").map{ Int($0) }
for i in 0..<n {
	arr.append(arr2[i]!)
}
let obj = output(n: n, k: k, arr: arr)
print(obj.calculation())



