import Foundation
struct Students{
   private let name: String
   private let id: Int
   private let email: String
   private let pythonMark: Int
   private let swiftMark: Int
   private let cMArk: Int
   init (name: String, id: Int, email: String, pythonMark: Int, swiftMark: Int, cMArk: Int) {
       self.id = id
       self.name = name
       self.email = email
       self.pythonMark = pythonMark
       self.swiftMark = swiftMark
       self.cMArk = cMArk
   }
    func average() -> [String] {
        var averageMark = ["\((pythonMark + swiftMark + cMArk) / 3)",name,"\(id)"]
        return averageMark
    }
    func rankListOfStudent() -> Void {
        let marks = [pythonMark,swiftMark,cMArk]
        let failedStudents = marks.filter { $0 <= 44 }
        var rankholdersMark = 0
        if failedStudents == [] {
           rankholdersMark = marks.reduce(0, +)
            rankHoldersMarkList.append(rankholdersMark)
        } 
    }
    func failureName() -> String {
        let marks = [pythonMark,swiftMark,cMArk]
        let failedStudents = marks.filter { $0 <= 44 }
        if failedStudents != [] {
            return name
    } else {
        return ""
    }
}
}
var rankHoldersMarkList = [Int]()
let studentSheet = ["tony, 1, email@emm.com,{python: 67, swift: 65, c: 46}",
                    "yyy, 1, dkd@email.com,{python: 67, swift: 95, c: 90}",
                    "zzz, 1, email@email.com,{python: 75, swift: 55, c: 80}",
                   "mmm, 1, email@emm.com,{python: 6, swift: 65, c: 10}"]
for eachStudentDataToSplit in studentSheet {
    var eachstudent = eachStudentDataToSplit.replacingOccurrences(of: " ", with: "")
     eachstudent = eachstudent.replacingOccurrences(of: "}", with: "")
    let nameAndId = eachstudent.components(separatedBy: ",")
    var tempPythonMark = eachstudent.components(separatedBy: "python:")
    let pythonMark = tempPythonMark[1].components(separatedBy: ",")
    let tempSwiftMark = eachstudent.components(separatedBy: "swift:")
    let swiftMark = tempSwiftMark[1].components(separatedBy: ",")
    let tempCMark = eachstudent.components(separatedBy: "c:")
    let cMark = tempCMark[1].components(separatedBy: ",")
    let email = nameAndId[2]
    let checkingAt = email.filter { $0 == "@"}
    let checkingDot = email.filter { $0 == "."} 
    // email validation 
        if checkingDot == "." , checkingAt == "@" {
        let checkingBeforeAt = email.components(separatedBy: "@")
        let checkingBeforeDot = checkingBeforeAt[1].components(separatedBy: ".")
            if checkingBeforeDot[0].count > 2 , checkingBeforeDot[1].count > 1 ,checkingBeforeAt[0].count > 2 {
                    let dataOfResult = Students(name: nameAndId[0], id: Int(nameAndId[1]) ?? 0,email: nameAndId[2], pythonMark: Int(pythonMark[0]) ?? 0,swiftMark: Int(swiftMark[0]) ?? 0, cMArk: Int(cMark[0]) ?? 0)
                       //call here what list you needed
                       dataOfResult.rankListOfStudent()
        } else {
            print("Sorry you entered wrong email for \(nameAndId[0])")
        }
        } else {
            print("Sorry you entered wrong email for \(nameAndId[0])")
        }
 }
if rankHoldersMarkList != [] {
    rankHoldersMarkList.sort(by: >)
    for rank in 0..<rankHoldersMarkList.count {
        print("\(rank + 1) is for \(rankHoldersMarkList[rank])")
    }
}
