import Foundation
let n = Int(readLine()!)!
func digitSum(val: Int) -> Int {
	var sum = 0
	var vall = val
	while(vall > 0) {
		sum += vall % 10
		vall = vall / 10
	}
	return sum
}
var i = 1
var num = 0
var final = 0
while i <= n {
	if n % i == 0 {
		let s = digitSum(val: i)
		if(s > num)
		{ 
			num = s 
			final = i
		}
			
	}
	
	
	i += 1  
}

print(final)