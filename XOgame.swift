                                // code is ready but its still not in winning mode but it will do defence More
import Foundation
var xo = [["o",".","x"],
          [".","x","."],
          ["o","x","."]
          ]
var doneMsg = ""
var countOfRow = 0
if xo[0][0] == "." {
    xo[0][0] = "o"
} else if xo[0][2] == "." {
    xo[0][2] = "o"
}
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
if doneMsg == "" {
    outerloop : for i in 0..<xo.count {
        var countOfXInVertical = 0
        var nonXPlace = [Int]()
        for j in 0..<xo.count{
            var listtofindwinner = [xo[0][i], xo[1][i], xo[2][i]]
            if xo[j][i] == "x"{
                countOfXInVertical += 1
                if countOfXInVertical == 2 {
                    if xo[2][i] != "x" , xo[2][i] != "o"{
                        xo[2][i] = "o"
                        doneMsg = "done"
                        break outerloop
                    } else {
                        if nonXPlace != [] {
                            if xo[nonXPlace[0]][i] == "." {
                                xo[nonXPlace[0]][i] = "o"
                                doneMsg = "done"
                                 break outerloop
                            }
                        } else {
                            var countOfWinnerOVertical = listtofindwinner.filter{ $0.contains("o") }
                            var countOfWinnerXVertical = listtofindwinner.filter{ $0.contains("x") }
                            print(countOfWinnerOVertical.count)
                            if countOfWinnerOVertical.count == 3 {
                                 print("i won YOU ")
                                doneMsg = "done"
                                break outerloop
                            } else if countOfWinnerXVertical.count == 3 {
                                 print("YOU WON")
                                doneMsg = "done"
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
        let indexValue = diagonal1.index(of: ".") ?? 0
        if indexValue != 0 {
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
