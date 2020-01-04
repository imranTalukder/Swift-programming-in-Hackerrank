import Foundation
class anagramSubstring {
	var str = [String]()
	init(str: [String])
	{
		self.str = str
	}
	
	
	func strSort(str1: String) -> String {
		var ar1 = [Character]()
		for ch in str1 {
			ar1.append(ch)
		}
		ar1 = ar1.sorted()
		
		return String(ar1)
	
	}
	
	func anagram() -> Int {
		let cnt = str.count
		var p = 0
		for i in 0..<cnt {
			str[i] = strSort(str1: str[i])
		}
		let counts = str.reduce(into: [:]) { counts, word in counts[word, default: 0] += 1 }
		for val in counts {
			let n = val.value - 1
			p += (n * (n + 1)) / 2
		}
		
		return p
	}
}
let t = Int(readLine()!)!
for _ in 1...t {
	var sum = 0
	let str = readLine()!
	var chArray = [Character]()
	var n = 0
	for ch in str {
		chArray.append(ch)
		n += 1
	}
	for i in 1...n - 1 {
		var strArray = [String]()
		var j = 0
		while j <= n - i {
			var k = i 
			var jj = j
			var firstArray = [Character]()
			while k > 0 {
				firstArray.append(chArray[jj])
				k -= 1
				jj += 1
			}
			let str = String(firstArray)
			strArray.append(str)
			j += 1
		}
		let obj = anagramSubstring(str: strArray)
		sum += obj.anagram()
		
		
	}
	print(sum)

}	
			
			
