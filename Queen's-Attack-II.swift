import Foundation
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = arr[0] 
var k = arr[1] 
let arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let p = arr2[0] 
let q = arr2[1] 
var cnt11 = n, cnt22 = min((n - p), (n - q)), cnt33 = n, cnt44 = min((n - p), (q - 1)), cnt55 = 1, cnt66 = min((p - 1), (q - 1)), cnt77 = 1, cnt88 = min((p - 1), (n - q))
var p1 = 0, p2 = 0, p3 = 0, p4 = 0, p5 = 0, p6 = 0, p7 = 0, p8 = 0
while k > 0 {

    let arr3 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
	let i = arr3[0] 
	let j = arr3[1] 
	let cheekk1 = abs(p - i)
	let cheekk2 = abs(q - j)
	let pp = cheekk1 - cheekk2
	if i == p && j > q {
        
		cnt11 = min(cnt11, j)
		p1 = 1
		
    }
	else if (i > p && j > q) && pp == 0 {
	    
		let c = min((i - p), (j - q))
		cnt22 = min(cnt22, c)
		p2 = 1
	}
	
	else if i > p && j == q {
	   
		cnt33 = min(cnt33, i)
		p3 = 1
	} 
    else if i > p && j < q && pp == 0{
	    let c = min((i - p), (q - j))
		cnt44 = min(cnt44, c)
		p4 = 1
	}	
	else if i == p && j < q {
	    
		cnt55 = max(cnt55, j)
		p5 = 1
	}
	else if i < p && j < q && pp == 0{
	    
		let c = min((p - i), (q - j))
		cnt66 = min(cnt66, c)
		p6 = 1
	}
	else if i < p && j == q {
	    
		cnt77 = max(cnt77, i)
		p7 = 1
	}
	else  {
	    if pp == 0 {
		    let c = min((p - i), (j - q))
			cnt88 = min(cnt88, c)
			p8 = 1

		}
		
	}
	
    k -= 1
}
cnt11 = p1 > 0 ? cnt11 - 1 : cnt11
cnt22 = p2 > 0 ? cnt22 - 1 : cnt22
cnt33 = p3 > 0 ? cnt33 - 1 : cnt33
cnt44 = p4 > 0 ? cnt44 - 1 : cnt44
cnt55 = p5 > 0 ? cnt55 + 1 : cnt55
cnt66 = p6 > 0 ? cnt66 - 1 : cnt66
cnt77 = p7 > 0 ? cnt77 + 1 : cnt77
cnt88 = p8 > 0 ? cnt88 - 1 : cnt88

cnt11 = cnt11 - q
cnt33 = cnt33 - p
cnt55 = q - cnt55
cnt77 = p - cnt77
let sum = cnt11 + cnt22 + cnt33 + cnt44 + cnt55 + cnt66 + cnt77 + cnt88

print(sum)