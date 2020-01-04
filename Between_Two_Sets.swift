import Foundation
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)!}
var m = arr[0]
var n = arr[1]
var arr1 = readLine()!.components(separatedBy: " ").map{ Int($0)!}
var arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)!}
arr1.sort()
arr2.sort()
var a = arr1.count
a = a - 1
var cnt = 0
let firstValue = arr1[a]
let lastValue = arr2[0]
let diff = lastValue > firstValue ? "Yes" : "No"
switch diff {
    case "Yes":
		for i in firstValue...lastValue {
			var chek = 0
			for j in 0..<m {
				
				let data = arr1[j]
				if i % data != 0 {
					chek = 1
					break
				}
			}
			for j in 0..<n {
				
				let data = arr2[j]
				if data % i != 0 {
					chek = 1
					break
				}
			}
			
			
			
			if chek == 0 {
				cnt = cnt + 1
			}
			
		}
		print(cnt)
    case "No":
	    print("0")
    default: break
}
