import Foundation
var inA = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
arr.sort()
var m = inA[0] - 1
var n = arr[m] - inA[1]
if n > 0 {
    print("\(n)")
}
else {
    print("0")
}