import Foundation
class output {
	var loaves = [Int]()
	var n: Int
	init(loaves: [Int], n: Int) {
		self.loaves = loaves
		self.n = n
	}
	func fairRations() -> String {
		var i = 0
		var sum = 0
		while i < n - 1 {
			if loaves[i] % 2 == 1 {
				loaves[i] += 1
				loaves[i + 1] += 1
				
				sum += 1
			}
			i += 1
		}
		if loaves[n - 1] % 2 == 1 {
			return "NO"
		}
		return String(2 * sum)
	
	}
}
let n = Int(readLine()!)!
let ruti = readLine()!.components(separatedBy: " ").map{ Int($0)}
var loaves = [Int]()
for i in 0..<n {
	loaves.append(ruti[i]!)
}
let ins = output(loaves: loaves, n: n)
print(ins.fairRations())