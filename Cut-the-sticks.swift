import Foundation
let q = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var cnt = arr.count
var minValue = arr.min()!
while cnt > 0 {
    print(cnt)
	arr = arr.filter(){$0 != minValue}
	cnt = arr.count
	if cnt > 0 {
	    for i in 0..<cnt {
		    arr[i] = arr[i] - minValue
		}
		minValue = arr.min()!
	}
	
}








    