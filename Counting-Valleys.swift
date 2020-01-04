import Foundation
var n = Int(readLine()!)!
var data = readLine()!
var cnt2 = 0
var cnt3 = 0
var flagg = 0
for char in data {
    if char == "U" {
	    cnt2 += 1
	}
	else {
	    cnt2 = cnt2 - 1
	}
	if cnt2 < 0 {
	    flagg = 1
	}
	if cnt2 == 0 && flagg == 1 {
	    cnt3 += 1
		flagg = 0
	}	 
}
print(cnt3)