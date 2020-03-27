var email = "d@g.h"
var valid = 0
let checkingAt = email.filter { $0 == "@"}
let checkingDot = email.filter { $0 == "."} 
if checkingDot == "." , checkingAt == "@" {
let checkingBeforeAt = email.components(separatedBy: "@")
let checkingBeforeDot = checkingBeforeAt[1].components(separatedBy: ".")
if checkingBeforeDot[0] != "" , checkingBeforeDot[1] != "" ,checkingBeforeAt[0] != "" {
    valid = valid + 1
}
print(valid)
}
