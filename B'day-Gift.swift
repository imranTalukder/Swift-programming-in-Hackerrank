import Foundation
struct add { 
	var res = 0.0
	
}
let n = Int(readLine()!)!
var sum = 0
for _ in 1...n {
	let val = Int(readLine()!)!
	sum = sum + val
}
let obj = add(res: Double(sum) / 2)
print(obj.res)