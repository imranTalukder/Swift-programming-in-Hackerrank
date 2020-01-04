import Foundation
var n: String
var pm = [Character]()
n = readLine()!
let timeArray = n.components(separatedBy: ":")
var ss = timeArray[2]
for char in ss {
    pm.append(char)
}
var first: Int
first = Int(timeArray[0])!

if pm[2] == "P" && first < 12 {
    
	first = first + 12
	print("\(first):\(timeArray[1]):\(pm[0])\(pm[1])")
}
else if pm[2] == "A" && first == 12 {
    print("00:\(timeArray[1]):\(pm[0])\(pm[1])")
}
else {
    print("\(timeArray[0]):\(timeArray[1]):\(pm[0])\(pm[1])")
}