import Foundation
var year = Int(readLine()!)!
var check = year <= 1900 ? "YES" : "NO"
switch check {
    case "YES":
	    if year % 4 == 0 {
		    print("12.09.\(year)")
		}
		else {
		    print("13.09.\(year)")
		}
	case "NO":
	    if year == 1918 {
		    print("26.09.\(year)")
		}
	    else if year % 400 == 0 {
		    print("12.09.\(year)")
		}
		else if year % 4 == 0 && year % 100 != 0 {
		    print("12.09.\(year)")
		}
		else {
		    print("13.09.\(year)")
		}
	default: break
}