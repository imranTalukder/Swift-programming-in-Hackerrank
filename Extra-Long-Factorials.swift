import Foundation
var arr = [Int]()
var hundred = 0
var n = Int(readLine()!)!
arr.append(1)
if (n == 100) {
	n = n - 1
	hundred = 1
}
for y in 1...n {
	var cnt = arr.count
	let i = y
	cnt = cnt - 1
	if(i < 10) {
		
		var carry = 0
		for j in 0...cnt {
			var p = arr[j] * i + carry
			
			if(p >= 10) {
				carry = p / 10
				p = p % 10
				arr[j] = p
				
			}
			else if(p < 10) {
				arr[j] = p
				carry = p / 10
				
			}
			if(j == cnt && carry > 0) {
				arr.append(carry)
			}
		}
		
		
	}
	else {
		cnt = arr.count
		var prePosition = arr[0]
		let a = i / 10
		let b = i % 10
		var xcarry = 0
		var q = prePosition * b
		xcarry = q / 10
		q = q % 10
		arr[0] = q
		var ycarry = 0
		var xycarry = 0
		
		for j in 1..<cnt {
			var x = arr[j] * b + xcarry
			xcarry = x / 10
			x = x % 10
			var y = prePosition * a + ycarry
			ycarry = y / 10
			y = y % 10
			var sum = x + y + xycarry
			q = sum % 10
			prePosition = arr[j]
			arr[j] = q
			xycarry = sum / 10
			
			
			if(j == cnt - 1){

				y = prePosition * a + ycarry
				ycarry = y / 10
				y = y % 10
				sum = y + xcarry + xycarry
				if(sum >= 10) {
					x = sum % 10
					arr.append(x)
					xycarry = sum / 10
					
				}
				else {
					arr.append(sum)
					xycarry = sum / 10
				}
				sum = xycarry + ycarry
				if(sum >= 10) {
					x = sum % 10
					arr.append(x)
					xycarry = sum / 10
					arr.append(xycarry)
					
				}
				else if(sum > 0 && sum < 10){
					arr.append(sum)
				}
			}
			
			
		}
		
		
	}
	
}
var cnt = arr.count - 1
while (cnt >= 0) {
    let m = arr[cnt]
	print("\(m)", terminator: "")
	cnt = cnt - 1
}
if(hundred == 1) {
	print("00")
	hundred = 0
}
	
