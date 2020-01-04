import Foundation
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = arr[0]
let d = arr[1]
let arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var sum = 0
if n < 3 {
    sum = 0
}
else {
	for i in 0...n - 3 {
		for j in i + 1...n - 2 {
			let p = arr2[j] - arr2[i]
			if p == d {
				for k in j + 1...n - 1 {
					let q = arr2[k] - arr2[j]
					if q == d {
						sum += 1
						break
					}
					if q > d {
						break
					}
				}
			
			}
			if p > d {
				break
			}
		
		}
		
		
	}
}

print(sum)