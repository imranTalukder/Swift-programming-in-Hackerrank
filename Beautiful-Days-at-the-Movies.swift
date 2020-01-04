import Foundation
var inA = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var rev = [Int]()
var ex = 0
var i = inA[0]
var j = inA[1]
var k = inA[2]
var cnt = 0
func reverse(b: Int) -> Int {
    var rev = [Int]()
	var sum = 0
	var a = b
    while a > 0 {
	    ex = a % 10
		a = a / 10
		rev.append(ex)
		sum = sum + ex
		sum = sum * 10
	}
	sum = sum / 10
	return sum
}

for d in i...j {
    var val = reverse(b: d)
	val = abs(d - val)
	if val % k == 0 {
	    cnt += 1
    }
}
print("\(cnt)")
	
		