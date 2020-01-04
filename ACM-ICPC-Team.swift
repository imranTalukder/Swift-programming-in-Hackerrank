import Foundation
let nm = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = nm[0], m = nm[1]
var arrayString = [[Int]]()
let p = n - 1
for _ in 1...n {   
    arrayString.append(readLine()!.characters.map{Int(String($0))!})
}
var maxx = 0
var cnt = 0
var appearCount = Array(repeating: 0, count: 505)
for i in 0..<p {
    for j in i + 1..<n {
        for k in 0..<m where arrayString[i][k] | arrayString[j][k] == 1 {
			cnt += 1 
        }
        appearCount[cnt] += 1
        maxx = max(maxx, cnt)
        
        cnt = 0
    }
}
print(maxx)
print(appearCount[maxx])
