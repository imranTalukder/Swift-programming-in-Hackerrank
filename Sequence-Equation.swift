import Foundation
var n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var input = 0
var sum = 0
for j in 1...n {
	for i in 0..<n {
		var val = arr[i]
		if j == val {
		    input = i + 1
		    for k in 0..<n {
			    val = arr[k]
			    if input == val {
					sum = k + 1
					break
				}
			}
			break
		}
	}
	print("\(sum)")
}