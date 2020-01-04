import Foundation
let returnn = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let due = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var res = 0
if returnn[2] != due[2] {
    if due[2] > returnn[2] {
	    print("0")
	}
	else {
	    print("10000")
	}
}
else if returnn[1] != due[1] {
    if due[1] > returnn[1] {
	    print("0")
	}
	else {
	    res = returnn[1] - due[1]
		res = res * 500
	    print(res)
	}
}
else if returnn[0] != due[0] {
    if due[0] > returnn[0] {
	    print("0")
	}
	else {
	    res = returnn[0] - due[0]
		res = res * 15
	    print(res)
	}
}
else {
    print("0")
}
