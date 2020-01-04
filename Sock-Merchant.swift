import Foundation
var n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map { Int($0)!}
var check = [Int]( repeating: 0, count: 101 )
var cnt = 0
for i in arr {
    check[i] += 1
	if check[i] == 2 {
	    cnt += 1
		check[i] = 0
	}
}
print(cnt)