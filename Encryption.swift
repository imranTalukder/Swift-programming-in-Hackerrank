import Foundation
let s = readLine()!
let l = s.count
var arr = [Character]()
for ch in s {
    arr.append(ch)
}
var sRoot = sqrt(Double(l))
let clmn = Int(ceil(sRoot))
var row = Int(sRoot.rounded(.down))
if row * clmn <= l {
    row += 1
}
for i in 0..<clmn {
    var j = i
    for _ in 1...row {
	    print(arr[j], terminator:"")
		j += clmn
		
		if j >= l {
		    break
		}
	}
	print(" ", terminator:"")
}
