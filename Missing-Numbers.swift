import Foundation
let n = Int(readLine()!)!
let listA = readLine()!.components(separatedBy: " ").map { Int($0) }
let m = Int(readLine()!)!
let listB = readLine()!.components(separatedBy: " ").map { Int($0) }

var present = [Int](repeating: 0, count: 10005)
for i in 0..<n {
	present[listA[i]!] -= 1
	present[listB[i]!] += 1
}
var i = n
while i < m {
	present[listB[i]!] += 1 
	i += 1 
}

var miss = [Int]()
for j in 1...10000 {
	if present[j] > 0 {
		miss.append(j)
	}
}

for j in 0..<miss.count {
	print("\(miss[j])", terminator: " ")
}