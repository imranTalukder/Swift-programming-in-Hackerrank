import Foundation
var t = Int(readLine()!)!
func Russian(ax: Int, bx: Int, kk: Int, m: Int) -> (Int, Int) {
	var p = 0
	var q = 0
	var k = kk
	var a = ax % m
	var b = bx % m
	while k % 2 == 0 {
		p = (((a * a) % m) - ((b * b) % m) + m) % m
		q = ((2 * (a * b) % m) % m + m) % m
		k = k / 2
		a = p
	    b = q
	}
	var pa = a
	var pb = b
	
	k = k / 2
	while k > 0 {
		p = ((a * a) % m - (b * b) % m + m) % m
		q = ((2 * (a * b) % m) % m + m) % m
		if k % 2 == 1 {
			let w1 = ((p * pa) % m - (q * pb) % m + m) % m
			let w2 = ((q * pa) % m + (p * pb) % m + m) % m
			pa = w1
			pb = w2
		}
		k = k / 2
		a = p
		b = q
	}
	return (pa, pb)
}
for _ in 1...t {
	let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	let aa = arr[0]
	let bb = arr[1]
	let k = arr[2]
	let m = arr[3]
	

	let (aaa, bbb) = Russian(ax: aa, bx: bb, kk: k, m: m)
	
	
	print("\(aaa) \(bbb)")
}
