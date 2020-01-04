import Foundation
var value = [Int]()
var inA = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var line: String = readLine()!
for ch in line {  
    if ch == "a" {
	    value.append(inA[0])
	}
	else if ch == "b" {
	    value.append(inA[1])
	}
	else if ch == "c" {
	    value.append(inA[2])
	}
	else if ch == "d" {
	    value.append(inA[3])
	}
	else if ch == "e" {
	    value.append(inA[4])
	}
	else if ch == "f" {
	    value.append(inA[5])
	}
	else if ch == "g" {
	    value.append(inA[6])
	}
	else if ch == "h" {
	    value.append(inA[7])
	}
	else if ch == "i" {
	    value.append(inA[8])
	}
	else if ch == "j" {
	    value.append(inA[9])
	}
	else if ch == "k" {
	    value.append(inA[10])
	}
	else if ch == "l" {
	    value.append(inA[11])
	}
	else if ch == "m" {
	    value.append(inA[12])
	}
	else if ch == "n" {
	    value.append(inA[13])
	}
	else if ch == "o" {
	    value.append(inA[14])
	}
	else if ch == "p" {
	    value.append(inA[15])
	}
	else if ch == "q" {
	    value.append(inA[16])
	}
	else if ch == "r" {
	    value.append(inA[17])
	}
	else if ch == "s" {
	    value.append(inA[18])
	}
	else if ch == "t" {
	    value.append(inA[19])
	}
	else if ch == "u" {
	    value.append(inA[20])
	}
	else if ch == "v" {
	    value.append(inA[21])
	}
	else if ch == "w" {
	    value.append(inA[22])
	}
	else if ch == "x" {
	    value.append(inA[23])
	}
	else if ch == "y" {
	    value.append(inA[24])
	}
	else if ch == "z" {
	    value.append(inA[25])
	}
}
value.sort()
var v = value.count
var m = v - 1
v = v * value[m]
print("\(v)")

	