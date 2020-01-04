import Foundation
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	let n = arr[0]
	var k = arr[1]
	let q = arr[2]

var newArr = [Int]()
var val = 0
k = k % n
var j = n - k
var d = j
for i in j..<n {
    val = arr2[i]
    newArr.append(val)
}
for i in 0..<d {
    val = arr2[i]
    newArr.append(val)
}
for _ in 0..<q {
    let res = Int(readLine()!)!
    val = newArr[res]
	print("\(val)")
}