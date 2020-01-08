import Foundation 
let nk = readLine()!.components(separatedBy: " ").map { Int($0) }
let n = nk[0]!
let k = nk[1]!
var priceList = readLine()!.components(separatedBy: " ").map { Int($0)! }
priceList = priceList.sorted(by: <)
var sum = 0
var res = 0
for i in 0..<n {
	sum += priceList[i]
	if sum > k {
		break
	}
	res += 1
}
print(res)