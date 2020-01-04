import Foundation
var arr2 = readLine()!.components(separatedBy: " ").map { Int($0)!}
var n = arr2[0]
var arr = readLine()!.components(separatedBy: " ").map { Int($0)!}
var k = arr2[1]
var limit = n - 1
var cnt = 0
for i in 0..<limit {
    let j = i + 1
	for m in j..<n {
	    var sum = 0
		sum = arr[i] + arr[m]
		if sum % k == 0 {
		    cnt = cnt + 1
		}
	}
}
print("\(cnt)")