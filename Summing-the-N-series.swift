import Foundation
let t = Int(readLine()!)!
let d = 1000000007
for _ in 1...t {
	let n = Int(readLine()!)!
	let sum = ((n % d) * (n % d)) % d
	print(sum)
}