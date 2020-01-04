import Foundation
var testCase = Int (readLine()!)!

func minCost(bb: Int, ww: Int, bbc: Int, wwc: Int, zz: Int) -> Int {
    var sum = bb + ww
    if bbc - wwc > zz {
        sum = wwc * sum + bb * zz
	}
	else if wwc - bbc > zz {
        sum = bbc * sum + ww * zz
	}
	else {
	    sum = bb * bbc + ww * wwc
	}
	return sum
}


for _ in 1...testCase {
    let arr = readLine()!.components(separatedBy: " ").map{ Int($0)!}
	let b = arr[0]
	let w = arr[1]
	let arr1 = readLine()!.components(separatedBy: " ").map{ Int($0)!}
	let bc = arr1[0]
	let wc = arr1[1]
	let z = arr1[2]
	print(minCost(bb: b, ww: w, bbc: bc, wwc: wc, zz: z))
}