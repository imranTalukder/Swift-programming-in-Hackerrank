import Foundation
var n = Int(readLine()!)!
var sum = 0
var p = 2
for _ in 1...n {
    sum = sum + p
	p = p * 3
	p = p / 2
}
print("\(sum)")