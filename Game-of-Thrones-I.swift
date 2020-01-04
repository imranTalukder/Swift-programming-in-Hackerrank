class gameOfThrones {
	var str: String
	init(str: String) {
		self.str = str
	}
	func Boom() {
		var arr = [Int](repeating: 0, count: 26)
		var cnt = 0
		var p = 0
		for ch in str.utf8 {
			let v = Int(ch) - 97
			arr[v] += 1
			cnt += 1
		}
		for i in 0...25 {
			if arr[i] % 2 == 1 {
				p += 1
			}
		}
		if cnt % 2 == 0 && p == 0 {
			print("YES")
		}
		else if cnt % 2 == 1 && p == 1 {
			print("YES")
		}
		else {
			print("NO")
		}
	}
}
let str = readLine()!
let obj = gameOfThrones(str: str)
obj.Boom()






