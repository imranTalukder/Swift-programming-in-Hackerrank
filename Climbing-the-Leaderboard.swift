import Foundation
var n = Int(readLine()!)!
var arrList = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var m = Int(readLine()!)!
var alicList = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var rank: [Int] = []
var p = arrList[0]
rank.append(p)
for i in 1..<n {
    let q = i - 1
    if arrList[i] < arrList[q] {
	    p = arrList[i]
	    rank.append(p)	
	}
}
var res = rank.count - 1

for j in 0..<m {
    while res >= 0 {
	    p = 1
	    if alicList[j] < rank[res] {
		    p = res + 2
			break
		}
		res = res - 1
	}
    print("\(p)")
}	


