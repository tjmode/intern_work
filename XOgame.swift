                                                  
                              // still not finish



import Foundation
var xo = [["x","o","x"],
          ["o",".","."],
          ["x",".","o"]
          ]
var doneMsg = ""
var countOfRow = 0
endfor: for i in 0..<xo.count {
    var countOfColumn = 0
    var countOfX = 0
    var emptyTofill = [Int]()
    for j in 0..<xo.count {
        if xo[i][j] == "x" {
            countOfX += 1
            if countOfX == 2 {
                if xo[i][2] != "o",xo[i][2] != "x" {
                   xo[countOfRow][2] = "o"
                   doneMsg = "done"
                   break endfor
                } else {
                       if emptyTofill != []{
                        if xo[countOfRow][emptyTofill[0]] != "x" , xo[countOfRow][emptyTofill[0]] != "o" { 
                        xo[countOfRow][emptyTofill[0]] = "o"
                        doneMsg = "done"
                        break endfor
                        }
                       } else {
                          var countOfWinnerO = xo[i].filter{ $0.contains("o") }
                          var countOfWinnerX = xo[i].filter{ $0.contains("x") }
                          if countOfWinnerO.count == 3 {
                              print("i won YOU ")
                              doneMsg = "done"
                              break endfor
                          } else if countOfWinnerX.count == 3 {
                              print("YOU WON")
                              doneMsg = "done"
                              break endfor
                          }   
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
//              0  1   2 
// var xo = [["x",".","x"],
//           ["x",".","x"],
//           [".","x","x"]
//           ]
if doneMsg != "done" {
    outerloop : for i in 0..<xo.count {
        var countOfXInVertical = 0
        var nonXPlace = [Int]()
        for j in 0..<xo.count{
            if xo[j][i] == "x"{
                countOfXInVertical += 1
                if countOfXInVertical == 2 {
                    if xo[2][i] != "x" , xo[2][i] != "o"{
                        xo[2][i] = "o"
                        break outerloop
                    } else {
                        if nonXPlace != [] {
                            if xo[nonXPlace[0]][i] == "." {
                                xo[nonXPlace[0]][i] = "o"
                                 break outerloop
                            }
                        }
                    }  
                }
            } else {
                nonXPlace.append(j)
            }
        }
    }
}
for k in xo{
    print(k)
}
