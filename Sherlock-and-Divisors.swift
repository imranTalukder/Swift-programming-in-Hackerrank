import Foundation
let t = Int(readLine()!)!
for _ in 1...t {

	let n = Int(readLine()!)!
	var sum = 0
	if n % 2 == 0 {
		sum = 1
	}
	
	var i = 2
	while i * i <= n {
		if( n % i == 0) {
			if((n / i) % 2 == 0) && (i * i != n) {
				sum += 1
			}
			if(i % 2 == 0) {
				sum += 1
			}
			
		}
		i += 1
		
		
	}
	print(sum)
}
