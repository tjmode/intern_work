                              //thanks for checking 
                             // and it is normal AI 3x3 xo game. trying is best defend the human way 
                              // how to play it without UI 
                                     // * you need to decide the move of computer X or O 
                                      // * if human move is x you need to change any dot into x in a XO array, and program will 
                                      //return xo array with O by replacing dot 
                                        // * now you need to replace with XO array with returned xo array and so on
import Foundation
var xo = [["x","o","o"],
          ["o","o","x"],
          ["x","x","o"]
          ]
var doneMsg = ""
let computerMove = "x"
let humanMove = "o"
if xo[0][0] == "."{
    xo[0][0] = computerMove
    doneMsg = "done"
} else if xo[2][0] == "."{
    xo[2][0] = computerMove
    doneMsg = "done"
}
//horizontal
if doneMsg == "" {
    for horizontal in 0..<xo.count{
        let countOfOInHorizontal = xo[horizontal].filter{ $0.contains(computerMove) }
        let countOfXInHorizontal = xo[horizontal].filter{ $0.contains(humanMove) }
        let countOfDotInHorizontal = xo[horizontal].filter{ $0.contains(".") }
        if countOfOInHorizontal.count == 2 , countOfDotInHorizontal.count == 1{
            print("HUMAN LOST TO AI")
            var indexValue = xo[horizontal].index(of: ".") ?? 4
            xo[horizontal][indexValue] = computerMove
            doneMsg = "done"
            break
        } else if countOfXInHorizontal.count == 2 , countOfDotInHorizontal.count == 1 {
            var indexValue = xo[horizontal].index(of: ".") ?? 4
            xo[horizontal][indexValue] = computerMove
            doneMsg = "done"
            break
        } else if countOfXInHorizontal.count == 3 {
            print("YOU WON")
            doneMsg = "done"
            break
        }
        }
    }
//vertical...
if doneMsg == "" {
    for vertical in 0..<xo.count{
        let arrayOfVertical = [xo[0][vertical],xo[1][vertical],xo[2][vertical]]
        var countOfOInVertical = arrayOfVertical.filter{ $0.contains(computerMove) }
        var countOfXInVertical = arrayOfVertical.filter{ $0.contains(humanMove) }
        var countOfDotInVertical = arrayOfVertical.filter{ $0.contains(".") }
        if countOfOInVertical.count == 2 , countOfDotInVertical.count == 1{
            print("HUMAN LOST TO AI")
            var indexValue = arrayOfVertical.index(of: ".") ?? 4
            xo[indexValue][vertical] = computerMove
            doneMsg = "done"
            break
        } else if countOfXInVertical.count == 2 , countOfDotInVertical.count == 1 {
            var indexValue = arrayOfVertical.index(of: ".") ?? 4
            xo[indexValue][vertical] = computerMove
            doneMsg = "done"
            break
        } else if countOfXInVertical.count == 3 {
            print("YOU WON")
            doneMsg = "done"
            break
        }
        }
    }
// diagonal
if doneMsg == "" {
    var diagonal1 = [String]()
    var diagonal2 = [String]()
    for diagonal in 0..<xo.count{
        diagonal1.append(xo[diagonal][diagonal])
        diagonal2.append(xo[(xo.count - diagonal)-1] [diagonal])
    }
    var countOfOIndiagonal1 = diagonal1.filter{ $0.contains(computerMove) }
    var countOfXIndiagonal1 = diagonal1.filter{ $0.contains(humanMove) }
    var countOfOIndiagonal2 = diagonal2.filter{ $0.contains(computerMove) }
    var countOfXIndiagonal2 = diagonal2.filter{ $0.contains(humanMove) }
    if countOfOIndiagonal1.count == 3 {
        print("I WON YOU")
    }else if  countOfOIndiagonal1.count == 2 , countOfXIndiagonal1.count == 0 {
        let indexValue = diagonal1.index(of: ".") ?? 4
        if indexValue != 4 {
            xo[indexValue][indexValue] = computerMove
            print("I WON YOU BRO.....")
            }
    } else if countOfXIndiagonal1.count == 3 {
        print("yes you won")
    } else if countOfXIndiagonal1.count == 2 , countOfOIndiagonal1.count == 0 {
       let indexValue = diagonal1.index(of: ".") ?? 4
       if indexValue != 4 {
            xo[indexValue][indexValue] = computerMove
        }
    } else if countOfOIndiagonal2.count == 3 {
        print("I WON YOU")
    }else if  countOfOIndiagonal2.count == 2 , countOfXIndiagonal2.count == 0 {
        let indexValue = diagonal2.index(of: ".") ?? 0
        if indexValue != 0 {
        xo[abs(indexValue - 2)][indexValue] = computerMove
        print("I WON YOU BRO.....")
        }
    } else if countOfXIndiagonal2.count == 3 {
        print("yes you won")
    } else if countOfXIndiagonal2.count == 2 , countOfOIndiagonal2.count == 0 {
       let indexValue = diagonal2.index(of: ".") ?? 4
        if indexValue != 4 {
            xo[abs(indexValue - 2)][indexValue] = computerMove
        }
    }
}
if doneMsg == "" {
    if xo[2][2] == "." {
        xo[2][2] = computerMove
    } else if xo[1][1] == "."{
        xo[1][1] = computerMove
    } else {
        print("draw")
    }
}
for k in xo{
    print(k)
}
