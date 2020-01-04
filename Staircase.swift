import Foundation
let n = Int(readLine()!)!
var m = n
for i in 1...n {
    for _ in i..<m {
	    print(" ", terminator: "")
	}
	for _ in 1...i {
		print("#", terminator: "")
	}
	print("\n", terminator: "")
}