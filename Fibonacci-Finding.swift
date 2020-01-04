import Foundation
let t = Int(readLine()!)!
for _ in 1...t {
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	var aa = arr[0] % 1000000007
	var bb = arr[1] % 1000000007
	var nn = arr[2]
	var sum = nn < 1 ? aa : bb 
	while nn > 1 {
		sum = (aa + bb) % 1000000007
		aa = bb
		bb = sum
		nn -= 1
	}
	print(sum)
}