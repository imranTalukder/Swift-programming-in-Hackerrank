import Foundation
var time = Int (readLine()!)!
while time > 0 {
	let value = Int(readLine()!)!
	let m = value % 5
	if value < 38 {
		print(value)
	}
	else if m < 3 {
		print(value)
	}
	else {
		let sum = value + 5 - m
		print(sum)
	}
	time = time - 1
}