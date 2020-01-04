import Foundation
var n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map { Int($0)!}
var arr2 = readLine()!.components(separatedBy: " ").map { Int($0)!}

var d = arr2[0]
var m = arr2[1]
var j = m
var cnt = 0
while j <= n {
    var k = j - m
	var sum = 0
    for _ in 0..<m {
	    sum = sum + arr[k]
		k = k + 1
	}
	if sum == d {
	    cnt = cnt + 1;
	}
	j = j + 1
}
print("\(cnt)")