class stringToDigitArray {
	var value: String
	var n = 0
	var array1 = [Int](repeating: 0, count: 10)
	init(value: String)
	{
		self.value = value
	}
	func calc() {
		for ch in value {
			let digit = Int(String(ch))!
			array1[digit] += 1 
			n += 1
		}
	}
}
let t = Int(readLine()!)!
for _ in 1...t {
	let value = readLine()!
	let obj = stringToDigitArray(value: value)
	obj.calc()
	let array1 = obj.array1
	
	var res = 0
	if obj.n >= 3 {
		
		
		var chk = 104
		var inc = chk
		while chk <= 1000 {
			var array2 = [Int](repeating: 0, count: 10)
			var flag = 0
			while chk > 0 {
				let rem = chk % 10 
				array2[rem] += 1
				chk = chk / 10
			}
			for i in 0...9 {
				if array2[i] > 0 {
					if(array2[i] > array1[i]) {
						flag = 1 
						res = 1
					}
				}
			}
			if flag == 0 {
				res = 0
				break
			}
			inc = inc + 8
			chk = inc
		}
	}
	else if obj.n == 2 {
		let val = Int(value)!
		res = 1
		let val2 = (val % 10) * 10 + (val / 10)
		if (val % 8 == 0 || val2 % 8 == 0) {
			res = 0
		}
	}
	else {
		res = Int(value)! % 8
	}
	if res == 0 {
		print("YES")
	}
	else {
		print("NO")
	}
}
			
			
			
			
			
			
			
			