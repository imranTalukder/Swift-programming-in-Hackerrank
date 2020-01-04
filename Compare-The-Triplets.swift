import Foundation
var a = 0
var b = 0
var k = 0
let alice = readLine()!.components(separatedBy: " ").map{ Int($0)!}
let bob = readLine()!.components(separatedBy: " ").map{ Int($0)!}
for i in alice {
    if i > bob[k]{
	    a = a + 1
	}
	if i < bob[k]{
	    b = b + 1
	}
	k = k + 1
}
print("\(a) \(b)")