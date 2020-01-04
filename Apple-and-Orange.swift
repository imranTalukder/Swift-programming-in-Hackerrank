import Foundation
var result1 = 0
var result2 = 0
let s, t: Int
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)!}
s = arr[0]
t = arr[1]
var arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)!}
let a, b: Int
a = arr2[0]
b = arr2[1]
var arr3 = readLine()!.components(separatedBy: " ").map{ Int($0)!}
let m, n: Int
m = arr3[0]
n = arr3[1]
let arr4 = readLine()!.components(separatedBy: " ").map{ Int($0)!}
for j in arr4 {
	let q1 = j + a
	if  q1 >= s && q1 <= t {
		result1 = result1 + 1
	}
}
let arr5 = readLine()!.components(separatedBy: " ").map{ Int($0)!}
for h in arr5 {
	let d1 = h + b
	if d1 >= s && d1 <= t {
		result2 = result2 + 1
	}
}
print("\(result1)")
print("\(result2)")