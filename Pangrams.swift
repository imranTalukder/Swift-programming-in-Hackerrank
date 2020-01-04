import Foundation
let str = readLine()!
var arr = [Int](repeating: 0, count: 27)
var cnt = 0
for ch in str.utf8 {
	var val = Int(ch) - 65

	if val >= 26 && val <= 57 {
		val = val - 32
	}
	if val >= 0 && val <= 26 && arr[val] == 0 {
		cnt += 1
		arr[val] = 1
	}

}
if cnt >= 26 {
	print("pangram")
}
else {
	print("not pangram")
}