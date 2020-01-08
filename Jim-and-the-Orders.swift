import Foundation
let q = Int(readLine()!)!
var sumList = [Int]()
for i in 1...q {
	let nk = readLine()!.components(separatedBy: " ").map { Int($0) }
	let a = nk[0]!
	let b = nk[1]!
	let sum = (a + b) * 100000000 + i
	sumList.append(sum)
}
var srtList = sumList.sorted(by: <)
for i in 0..<q {
	let str = srtList[i]
	let pos = sumList.index(of: str)!
	print("\(pos + 1)", terminator: " ")
}