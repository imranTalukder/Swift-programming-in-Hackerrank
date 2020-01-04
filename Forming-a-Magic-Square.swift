import Foundation
var sourceArr : [[[Int]]] = [
		[[8,1,6],[3,5,7],[4,9,2]],
		[[4,3,8],[9,5,1],[2,7,6]],
		[[2,9,4],[7,5,3],[6,1,8]],
		[[6,7,2],[1,5,9],[8,3,4]],
		[[6,1,8],[7,5,3],[2,9,4]],
		[[8,3,4],[1,5,9],[6,7,2]],
		[[4,9,2],[3,5,7],[8,1,6]],
		[[2,7,6],[9,5,1],[4,3,8]]
]

var inputArr = [[Int]]()
for _ in 0..<3 {
    inputArr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
}
var result = 10000000
for i in 0..<8 {
    var sum = 0
    for j in 0..<3 {
	    for k in 0..<3 {
		    sum += abs(sourceArr[i][j][k] - inputArr[j][k])
		}
	}
	result = min(sum, result)
}
print("\(result)")