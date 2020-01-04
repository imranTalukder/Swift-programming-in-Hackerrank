import Foundation
let n = Int(readLine()!)!
for _ in 1...n {
	let arr1 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	let px = arr1[0]
	let py = arr1[1]
	let qx = arr1[2]
	let qy = arr1[3]
	let rx = 2 * qx - px
	let ry = 2 * qy - py
	print("\(rx) \(ry)")
}