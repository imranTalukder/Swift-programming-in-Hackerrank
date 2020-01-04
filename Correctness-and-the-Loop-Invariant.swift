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
		for i in 0..<n - 1{
			if arr[i] > arr[i + 1] {
				let temp = arr[i + 1]
				arr[i + 1] = arr[i]
				arr[i] = temp
				var k = i
				let p = arr[i]
				while k > 0 && p < arr[k - 1] {
					let tem2 = arr[k]
					arr[k] = arr[k - 1]
					arr[k - 1] = tem2
					k -= 1
				
				}
			
			
			}
			
		
		}
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



