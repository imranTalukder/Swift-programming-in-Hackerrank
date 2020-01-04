import Foundation
struct mainStruct {
	var str: String
	init(str: String) {
		self.str = str
	}
	func createArray() -> [Int] {
		
		var arr = [Int]()
		for ch in str.utf8 {
			let val = Int(ch)
			arr.append(val)
		}
		return arr
	}
	
	func Boom() -> Int {
		let Len = str.count 
		let arr = createArray()
		var sum = 0
		let pivot = Int(Len / 2) - 1
		var lastMark = Len - 1
		for i in 0...pivot {
			sum += abs(arr[i] - arr[lastMark])
			lastMark -= 1
		}
		return sum
	}
}
let n = Int(readLine()!)!
for _ in 1...n {
	let str = readLine()!
	let obj = mainStruct(str: str)
	print(obj.Boom())
}