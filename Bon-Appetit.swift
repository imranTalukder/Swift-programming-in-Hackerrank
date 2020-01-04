import Foundation
var arr = readLine()!.components(separatedBy: " ").map { Int($0)!}
var arr2 = readLine()!.components(separatedBy: " ").map { Int($0)!}
var ret = Int(readLine()!)!
arr2.remove(at: arr[1])
var sum = 0
for i in arr2 {
    sum += i
}
sum = sum / 2
if sum == ret {
    print("Bon Appetit")
}
else {
    ret = abs(sum - ret)
	print(ret)
}
