import Foundation


func Lcd(pp: Int, qq: Int) -> Int {
	var p: Int
	var q: Int
	var x = 0
	
	p = max(pp, qq) 
	q = min(pp, qq)
	if (p % q == 0) {
		x = p 	
	}
	else {
		var i = 2
		var val = p
		while val % q != 0 {
			val = p * i
			
			x = val
			i += 1
		}
	}
	return x
}


let t = Int(readLine()!)!


for _ in 1...t {
	let n = Int(readLine()!)!
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	print("\(arr[0])", terminator: " ")
	for i in 0..<n - 1 {
		
		let obj = Lcd(pp: arr[i], qq: arr[i + 1])
		print("\(obj)", terminator: " ")
	}
	print("\(arr[n - 1])")
}
