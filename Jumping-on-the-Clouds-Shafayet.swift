import Foundation
let n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var i = 1
var cnt = 1
while i < n - 2{
    if arr[i + 1] == 0 {
	    i += 2
	}
	else {
	    i += 1
	}
	cnt += 1
}
print(cnt)