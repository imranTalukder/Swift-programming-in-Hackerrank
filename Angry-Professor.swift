import Foundation
var n = Int(readLine()!)!
for _ in 1...n {
    var arr1 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	let p = arr1[0]
	let q = arr1[1]
	var cnt = 0
	var arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	for i in 0..<p {
	    if arr2[i] <= 0 {
		    cnt += 1
		}
	}
	if cnt >= q {
	    print("NO")
	}
	else {
	    print("YES")
	}
}