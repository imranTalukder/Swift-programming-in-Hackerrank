import Foundation
let n = Int(readLine()!)!
for _ in 1...n {
	let n = Int(readLine()!)!
	print((n / 2) * ((n / 2) + n % 2))
}