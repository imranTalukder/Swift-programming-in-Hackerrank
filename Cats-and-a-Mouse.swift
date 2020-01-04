import Foundation
func catAndMouse (x: Int, y: Int, z: Int) -> String {
    var res = String()
    let p = abs(x - z)
	let q = abs(y - z)
	if p == q {
	    res = "Mouse C"
	}
	else if p > q {
	    res = "Cat B"
	}
	else {
	    res = "Cat A"
	}
	return res
}

var n = Int(readLine()!)!
var a = 0
var b = 0
var c = 0
for _ in 0..<n {
    var arr = readLine()!.components(separatedBy: " ").map { Int($0)!}
	a = arr[0]
	b = arr[1]
	c = arr[2]
	let res = catAndMouse(x: a, y: b, z: c)
	print(res)
}

