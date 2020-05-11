import Foundation
import Glibc
var text = "abbaabbbam"
var textArray = Array(text)
print(textArray)
var prefixArray = [[String]]()
var surfix = [[String]]()
for i in 1..<textArray.count {
    let a = Array(textArray.prefix(i))
    print (a)
    prefixArray.append(a)
    print(textArray.suffix(i))
}
