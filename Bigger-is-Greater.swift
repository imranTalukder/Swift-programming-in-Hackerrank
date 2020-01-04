import Foundation
let q = Int(readLine()!)!
func biggerString(s: String, leng: Int) -> String {
    var wArray = [Character]()
    for ch in s {
		wArray.append(ch)
	}
	var pvot = 0
	
	for i in 1..<leng {
	    if(wArray[i] > wArray[i - 1]) {
		    pvot = i
		}
	}
	if(pvot == 0) {
	    return "no answer"
	}
	var smaller = wArray[pvot]
	var pos = pvot
	for i in pvot..<leng {
	    if(wArray[pvot - 1] < wArray[i]) {
		    if(wArray[i] < smaller) {
				smaller = wArray[i]
				pos = i
			}
		}
	}
	let temp = wArray[pvot - 1]
	wArray[pvot - 1] = wArray[pos]
	wArray[pos] = temp
	var j = pvot
	while(j < leng) {
	    var k = j + 1
	    while(k < leng) {
		    if(wArray[j] > wArray[k]) {
			    let temp = wArray[j]
				wArray[j] = wArray[k]
				wArray[k] = temp
			}
			k += 1
		}
		j += 1
	}
	
	
	return String(wArray)
}


for _ in 1...q {
    let w = readLine()!
	let cnt = w.count
	let ss = biggerString(s: w, leng: cnt)
	print(ss)
}

