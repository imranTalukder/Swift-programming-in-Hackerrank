import Foundation
let s = Int(readLine()!)!
let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)}
print(arr.index(of: s)!)