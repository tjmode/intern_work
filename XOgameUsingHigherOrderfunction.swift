import Foundation
var xo = [["o",".","x"],
          ["o","x","x"],
          ["x",".","o"]
          ]
var doneMsg = ""
var countOfRow = 0
if doneMsg == "" {
    for i in 0..<xo.count{
        var countOfOInHorizontal = xo[i].filter{ $0.contains("o") }
        var countOfXInHorizontal = xo[i].filter{ $0.contains("x") }
        var countOfDotInHorizontal = xo[i].filter{ $0.contains(".") }
        if countOfOInHorizontal.count == 2 , countOfDotInHorizontal.count == 1{
            print("HUMAN LOST TO AI")
            var indexValue = xo[i].index(of: ".") ?? 4
            xo[i][indexValue] = "o"
            doneMsg = "done"
            break
        } else if countOfXInHorizontal.count == 2 , countOfDotInHorizontal.count == 1 {
            var indexValue = xo[i].index(of: ".") ?? 4
            xo[i][indexValue] = "o"
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
    for i in 0..<xo.count{
        let arrayOfVertical = [xo[0][i],xo[1][i],xo[2][i]]
        var countOfOInVertical = arrayOfVertical.filter{ $0.contains("o") }
        var countOfXInVertical = arrayOfVertical.filter{ $0.contains("x") }
        var countOfDotInVertical = arrayOfVertical.filter{ $0.contains(".") }
        if countOfOInVertical.count == 2 , countOfDotInVertical.count == 1{
            print("HUMAN LOST TO AI")
            var indexValue = arrayOfVertical.index(of: ".") ?? 4
            xo[indexValue][i] = "o"
            doneMsg = "done"
            break
        } else if countOfXInVertical.count == 2 , countOfDotInVertical.count == 1 {
            var indexValue = arrayOfVertical.index(of: ".") ?? 4
            xo[indexValue][i] = "o"
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
    for i in 0..<xo.count{
        diagonal1.append(xo[i][i])
        diagonal2.append(xo[(xo.count - i)-1] [i])
    }
    var countOfOIndiagonal1 = diagonal1.filter{ $0.contains("o") }
    var countOfXIndiagonal1 = diagonal1.filter{ $0.contains("x") }
    var countOfOIndiagonal2 = diagonal2.filter{ $0.contains("o") }
    var countOfXIndiagonal2 = diagonal2.filter{ $0.contains("x") }
    if countOfOIndiagonal1.count == 3 {
        print("I WON YOU")
    }else if  countOfOIndiagonal1.count == 2 , countOfXIndiagonal1.count == 0 {
        let indexValue = diagonal1.index(of: ".") ?? 4
        if indexValue != 4 {
            xo[indexValue][indexValue] = "o"
            print("I WON YOU BRO.....")
            }
    } else if countOfXIndiagonal1.count == 3 {
        print("yes you won")
    } else if countOfXIndiagonal1.count == 2 , countOfOIndiagonal1.count == 0 {
       let indexValue = diagonal1.index(of: ".") ?? 4
       if indexValue != 4 {
            xo[indexValue][indexValue] = "o"
        }
    } else if countOfOIndiagonal2.count == 3 {
        print("I WON YOU")
    }else if  countOfOIndiagonal2.count == 2 , countOfXIndiagonal2.count == 0 {
        let indexValue = diagonal2.index(of: ".") ?? 0
        if indexValue != 0 {
        xo[abs(indexValue - 2)][indexValue] = "o"
        print("I WON YOU BRO.....")
        }
    } else if countOfXIndiagonal2.count == 3 {
        print("yes you won")
    } else if countOfXIndiagonal2.count == 2 , countOfOIndiagonal2.count == 0 {
       let indexValue = diagonal2.index(of: ".") ?? 4
        if indexValue != 4 {
            xo[abs(indexValue - 2)][indexValue] = "o"
        }
    }
}
for k in xo{
    print(k)
}
