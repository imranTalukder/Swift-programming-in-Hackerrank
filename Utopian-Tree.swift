import Foundation
var arr = [Int]()
arr.append(1)
var p = 1
for i in 1...60 {
    if i % 2 == 0 {
	    p = p + 1
	}
	else {
	    p = p * 2
	}
	arr.append(p)

}
var n = Int(readLine()!)!
for _ in 1...n {
    p = Int(readLine()!)!
	p = arr[p]
	print("\(p)")
}