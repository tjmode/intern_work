import Foundation
let givenString = "r23%#^%$^&54r^yGFCrt\\////er57"
var stringArray = [String]()
var intArray = [String]()
var symbolsArray = [String]()
var symbolscount = [String : Int]()
for eachString in givenString {
    if eachString.isLetter {

        stringArray.append("\(eachString)")
    }
    else if eachString.isNumber {

        intArray.append("\(eachString)")
    }
    else {
        if symbolsArray.contains("\(eachString)") {
            symbolscount["\(eachString)"] = symbolscount["\(eachString)"]! + 1

        }
        else {
            symbolscount["\(eachString)"] = 1
            symbolsArray.append("\(eachString)")
        }
    }
}
print(stringArray)
print(intArray)
for symbolsToPrint in symbolsArray {
    let symbolReapting = String(repeating: symbolsToPrint, count: symbolscount["\(symbolsToPrint)"]!)
    print(symbolReapting)
}
