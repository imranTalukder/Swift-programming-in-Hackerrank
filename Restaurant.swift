import Foundation
let t = Int(readLine()!)!

for _ in 1...t {
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	let sum = arr[0] * arr[1]
	var i = 2
	var res = sum
	while (i * i <= sum)
	{
		if(sum % (i * i) == 0) {
			if((arr[0] % i) == 0 && (arr[1] % i) == 0)
			{
				res = sum / (i * i)
			}
		}
		i += 1
	}
	print(res)
}