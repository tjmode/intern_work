//still error to clear
import Foundation
var xo = [["x",".","x"],
          ["x",".","x"],
          [".","x","x"]
          ]
var doneMsg = ""
var countOfRow = 0
endfor: for i in xo {
    var countOfColumn = 0
    var countOfX = 0
    var emptyTofill = [Int]()
    for j in i{
        if j == "x" {
            countOfX += 1
            if countOfX == 2 {
                if i[2] != "o",i[2] != "x" {
                   xo[countOfRow][2] = "o"
                   break endfor
                } else {
                       if emptyTofill != []{
                        if xo[countOfRow][emptyTofill[0]] != "x" , xo[countOfRow][emptyTofill[0]] != "o" { 
                        xo[countOfRow][emptyTofill[0]] = "o"
                        break endfor
                        }
                       } else {
                           print("YOU WON")
                       }
                }
            }
        } else {
            emptyTofill.append(countOfColumn)
        }
    countOfColumn += 1
    }
countOfRow += 1
}

var countOfRow = 0
for i in 0..<xo.count{
    var countOfColumn = 0
    var countOfX = 0
    var emptyTofill = [Int]()
    for j in 0..<xo.count{
        if xo[j][i] == "x" {
            
        }
    }
}
