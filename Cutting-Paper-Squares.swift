import Foundation
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let a = arr[0]
let b = arr[1]
print(a * b - 1)