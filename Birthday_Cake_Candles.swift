import Foundation
let n = Int(readLine()!)!
var cnt = 0
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)!}
let maxValue: Int = arr.max()!
for i in arr {
    if i == maxValue {
	    cnt += 1
	}
}
print(cnt)
