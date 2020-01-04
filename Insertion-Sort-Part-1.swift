import Foundation
class output {
	var n: Int
	var arr = [Int]()
	init(n: Int, arr: [Int]) {
		self.n = n
		self.arr = arr
	}
	
	func arrayPrint() {
		for i in 0..<n - 1 {
			print("\(arr[i])", terminator: " ")
		}
		print(arr[n - 1])
	}
	
	func insertionSort() {
		var k = n - 1
		let val = arr[k]
		while k > 0 && val < arr[k - 1] {
			
			arr[k] = arr[k - 1]
			k -= 1
			arrayPrint()
		}
		arr[k] = val
		arrayPrint()
	}
}

let n = Int(readLine()!)!
var arr = [Int]()
let arr2 = readLine()!.components(separatedBy: " ").map{ Int($0) }
for i in 0..<n {
	arr.append(arr2[i]!)
}
if n == 1 {
	print(arr[0])
}
else {
	let obj = output(n: n, arr: arr)
	obj.insertionSort()
}



