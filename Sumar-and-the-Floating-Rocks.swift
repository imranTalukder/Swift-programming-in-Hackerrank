import Foundation
let t = Int(readLine()!)!
func gcd(X: Int, Y: Int) -> Int {
    if(Y == 0) {
        return X
    }
    return gcd(X: Y, Y: X % Y)
}
for _ in 1...t {
    let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let x1 = arr[0]
    let y1 = arr[1]
    let x2 = arr[2]
    let y2 = arr[3]
    if x1 == x2 {
        print(abs(y2 - y1) - 1)
    }
    else if y1 == y2 {
        print(abs(x2 - x1) - 1)
    }
    else {
        let x = abs(x2 - x1)
        let y = abs(y2 - y1)
        
        print(gcd(X: x, Y: y) - 1)
        
    }
}

        