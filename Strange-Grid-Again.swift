import Foundation
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let tenFactr = ((arr[0] - 1) / 2) * 10 + (arr[0] - 1) % 2
print(tenFactr + (arr[1] - 1) * 2)
