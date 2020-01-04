import Foundation
var arr = readLine()!.components(separatedBy: " ").map { Int($0)!}
var b = arr[0]
var k = arr[1]
var u = arr[2]
var sum = 0
var maxx = 0
var arrk = readLine()!.components(separatedBy: " ").map { Int($0)!}
var arru = readLine()!.components(separatedBy: " ").map { Int($0)!}
for i in  arrk {
	for j in arru {
	    sum = 0
	    sum = i + j
		if sum > maxx && sum <= b {
		    maxx = sum
		}
	}
}
if maxx == 0 {
    print("-1")
}
else {
    print(maxx)
}