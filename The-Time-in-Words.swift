import Foundation

public extension Int {
  public var asWord: String {
    let numberValue = NSNumber(value: self)
    let formatter = NumberFormatter()
    formatter.numberStyle = .spellOut
    return formatter.string(from: numberValue)!
  }
}


// var value = 20
// print("\(value.asWord)")

var h = Int(readLine()!)!
let m = Int(readLine()!)!
var time = ""

switch m {
case 0:
    time = "\(h.asWord) o' clock"
case 1:
    time = "one minute past \(h.asWord)"
case 2..<15:
    time = "\(m.asWord) minutes past \(h.asWord)"
case 15:
    time = "quarter past \(h.asWord)"
case 16..<30:
    time = "\(m.asWord) minutes past \(h.asWord)"
case 30:
    time = "half past \(h.asWord)"
case 31..<45:
    time = "\((60 - m).asWord) minutes to \((h + 1).asWord)"
case 45:
    time = "quarter to \((h + 1).asWord)"
case 46..<60:
    time = "\((60 - m).asWord) minutes to \((h + 1).asWord)"
case 59:
    time = "\((60 - m).asWord) minute to \((h + 1).asWord)"
default:
    time = "Invalid"
}

for ch in time {
	if ch == "-" {
		print(" ", terminator:"")
	}
	else {
		print(ch, terminator:"")
	}
}
