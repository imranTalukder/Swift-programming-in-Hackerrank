import Foundation

let n = CLong(readLine()!)!
var p: [CLong] = []
for _ in 1...n {
    let ar = readLine()!.components(separatedBy: " ").map {CLong($0)!}
    p.append(ar[0]-ar[1]);
}
var max_so_far: CLong = -10000000000000
var sum: CLong = 0
var stIndx = 0, i = 0
while i < n {
    sum += p[i]
    if sum > max_so_far {
        max_so_far = sum
    }
    if sum < 0 {
        stIndx = i + 1
        stIndx %= n
        sum = 0
    }
    i += 1
    if i == n {
        i = 0
    }
    if stIndx == i && sum > 0 {
        break
    }
}
print(stIndx)

