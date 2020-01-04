import Foundation
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let l = arr[0]
let velocityDiff = abs(arr[2] - arr[1])
let q = Int(readLine()!)!
for _ in 1...q {
	let qi = Int(readLine()!)!
	let time = (sqrt(Double(2))) * (Double(l) - sqrt(Double(qi))) / Double(velocityDiff)
	let roundedValue1 = NSString(format: "%.6f", time)
	print(roundedValue1)
}
