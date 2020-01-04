import Foundation
let n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
arr = arr.sorted()
let mark = (n - 1) / 2
print(arr[mark])