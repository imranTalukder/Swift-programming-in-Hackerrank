import Foundation

var n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
arr.sort()
var range = n - 1
var ch = 0
var res = 0
var cnt = 1
for i in 0..<range {
    for j in i+1..<n {
	    ch = arr[j] - arr[i]
		if ch == 0 || ch == 1 {
		    cnt += 1
		}
		else {
		    break
		}
	}
	res = max(cnt, res)
	cnt = 1
}
print("\(res)")


