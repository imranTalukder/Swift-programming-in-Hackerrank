import Foundation
class calculation {
	var arrx = [Int]()
	var arry = [Int]()
	var mx1 = 0
	var mx2 = 0
	var mn1 = 0
	var mn2 = 0
	init(arrx: [Int], arry: [Int], mx1: Int, mn1: Int, mx2: Int, mn2: Int) {
		self.arrx = arrx
		self.arry = arry
		self.mx1 = mx1
		self.mx2 = mx2
		self.mn1 = mn1
		self.mn2 = mn2
	}
	func res() -> String {
		let n = arrx.count
		for i in 0...n - 1 {
			if ((arrx[i] < mx1 && arrx[i] > mn1) && (arry[i] < mx2 && arry[i] > mn2)) {
				return "NO"
			}
		}
		return "YES"
	
	}


}

let q = Int(readLine()!)!
for _ in 1...q {
	let n = Int(readLine()!)!
	var arrx = [Int]()
	var arry = [Int]()
	var minn = 1000000
	var maxx = -1000000
	var minn2 = 1000000
	var maxx2 = -1000000
	for _ in 1...n {
		let couple = readLine()!.components(separatedBy: " ").map{ Int($0) }
		arrx.append(couple[0]!)
		arry.append(couple[1]!)
		maxx = couple[0]! > maxx ? couple[0]! : maxx
		minn = couple[0]! < minn ? couple[0]! : minn
		maxx2 = couple[1]! > maxx2 ? couple[1]! : maxx2
		minn2 = couple[1]! < minn2 ? couple[1]! : minn2
		
	}
	let obj = calculation(arrx: arrx, arry: arry, mx1: maxx, mn1: minn, mx2: maxx2, mn2: minn2)
	print(obj.res())

}