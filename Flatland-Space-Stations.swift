import Foundation
let arr = readLine()!.components(separatedBy: " ").map{ Int($0) }
let n = arr[0]!
let m = arr[1]!
var arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)!}
let sortedList = arr2.sorted{ $0 < $1}

let a = sortedList[0] 
let b = n - 1 - sortedList[m - 1]
var x = 1 
var maxDiff = 0
while x < m {
	let dif = sortedList[x] - sortedList[x - 1]
	maxDiff = max(dif, maxDiff)
	x += 1
}
maxDiff = Int(maxDiff / 2)
let res = max(a,max(b,maxDiff))
print(res)
