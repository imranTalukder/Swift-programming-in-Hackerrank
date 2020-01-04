import Foundation
var str1 = [Character]()
var str2 = [Character]()
let s = readLine()!
let t = readLine()!
let k = Int(readLine()!)!
let a = s.count
let b = t.count
var j = 0
for ch in s {
    str1.append(ch)
}
for ch in t {
    str2.append(ch)

}

while j < a && j < b {
    if str1[j] != str2[j] {
		break
	}
	j += 1
}
var rem = k - a - b + j + j
if rem == 0 {
    print("Yes")
}
else if rem < 0 {
    print("No")
}
else if rem % 2 == 0 {
    print("Yes")
}
else {
    if rem >= 2 * j {
	    print("Yes")
	}
	else {
	    print("No")
	}
}









	