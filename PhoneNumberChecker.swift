/*
These days Bechan Chacha is depressed because his crush gave him list of mobile number some of them are valid and some of them are invalid. 
Bechan Chacha has special power that he can pick his crush number only if he has valid set of mobile numbers. Help him to determine the valid numbers.
You are given a string "S" and you have to determine whether it is Valid mobile number or not.
Mobile number is valid only if it is of length 10 , consists of numeric values and it shouldn't have prefix zeroes.
*/


import Foundation
let n = readLine()
for each in 0..<3 {

var number = readLine()
  
  var numberArray = Array(number)
    if numberArray.count != 10 {
        print("NO")
    } else { 
        if numberArray[0] == "0" {
            print("NO")
        } else {
            var countOfNumber = 0
            for numberChecker in 0..<numberArray.count {
                if ((Int(String(numberChecker))) ?? 10) != 10 {
                    countOfNumber += 1
                }
            }
            if countOfNumber == 10 {
                print("YES")
            } else {
                print("NO")
            }
        }
    }
}
