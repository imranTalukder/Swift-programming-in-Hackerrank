import Foundation
var n = Int(readLine()!)!
var endd = Int(readLine()!)!
var m = n
if n % 2 == 0 {
    m = m + 1
}
n = endd / 2
endd = (m - endd) / 2
n = min(n, endd)
print(n)