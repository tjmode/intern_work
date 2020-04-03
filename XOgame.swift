import Foundation
var xo = [["x","x","o"],
          ["x",".","x"],
          [".",".","."]
          ]
var doneMsg = ""
outerloop: for i in 0..<xo.count {
    var c = 0
    var count = 0
    var placeofX = [Int]()
   for j in 0..<3{
       count += 1
        if xo[i][j] == "x"{
            c = c + 1
            if c == 2 {
                    if placeofX == []{
                        if xo[i][2] == "."{
                        xo[i][2] = "o"
                        doneMsg = "done"
                        break outerloop
                        }
                    } else {
                        if xo[i][placeofX[0]] == "."{
                        xo[i][placeofX[0]] = "o"
                        doneMsg = "done"
                        break outerloop
                        }
                    }
            }
        } else if xo[i][j] == "." {
            placeofX.append(count)
        }
        }
    }
// if doneMsg != "done"{
// outloop: for j in 0..<xo.count {
//     var c1 = 0
//     var count1 = 0
//     var palceOfx = [Int]()
//    for i in 0..<3{
//        if xo[i][j] == "x"{
//            c1 = c1 + 1
//            if c1 == 2 {
//                if palceOfx == []{
//                    xo[i][2] = "o"
//                    break outloop
//                } else {
//                xo[i][palceOfx[0]] = "o"
//                break outloop
//                }
//            }
//        } else if xo[i][j] == "." {
//             palceOfx.append(count1)
//         } else if xo[i][j] == "o" { 
//             break outloop
//         }
//      count1 += 1
//      }
// }
// }
for m in xo{print(m)}
