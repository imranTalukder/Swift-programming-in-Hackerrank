import Foundation
var n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map { Int($0)!}
var birds = [0,0,0,0,0,0]
for i in arr {
    birds[i] += 1
}
var maxx = 0
var id = 1
for j in 1..<6 {
    if maxx < birds[j] {
	    maxx = birds[j]
		id = j
	}
}
print(id)