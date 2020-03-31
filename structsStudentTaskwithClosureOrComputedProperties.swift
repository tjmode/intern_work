import Foundation
struct Students{
    static var rankHoldersMarkList = [Int]()
    {
        didSet{
         print(rankHoldersMarkList)
     } 
}
    static var failureName = [String](){
        didSet{
         print(failureName)
     } 
}
     private let name: String
     let id: Int
     let email: String
     let pythonMark: Int
     let swiftMark: Int
     let cMArk: Int
     init (name: String ,id: Int,email: String,pythonMark: Int,swiftMark: Int,cMArk: Int) {
       self.name = name
       self.id = id
       self.email = email
       self.pythonMark = pythonMark
       self.swiftMark = swiftMark
       self.cMArk = cMArk
     }

         var failureName: String {
        let marks = [pythonMark,swiftMark,cMArk]
        let failedStudents = marks.filter { $0 <= 44 }
        if failedStudents != [] {
            Students.failureName.append(name)
        }
    return ""  
    }
   var rankList: String {
        let marks = [pythonMark,swiftMark,cMArk]
        let failedStudents = marks.filter { $0 <= 44 }
        var rankholdersMark = 0
        var temp = Students.rankHoldersMarkList
        if failedStudents == [] {
            rankholdersMark = marks.reduce(0, +)
            Students.rankHoldersMarkList.append(rankholdersMark)
            }
            return ""
        }
}
let studentSheet = ["tony, 1, email@emm.com,{Python: 67, swift: 65, c: 46}",
                    "yyy, 1, dkd@email.com,{python: 67, swift: 95, c: 90}",
                    "zzz, 1, email@email.com,{python: 75, swift: 55, c: 80}",
                   "mmm, 1, email@emm.com,{python: 6, swift: 65, c: 10}"]
for eachStudentDataToSplit in studentSheet {
    var eachstudent = eachStudentDataToSplit.replacingOccurrences(of: " ", with: "")
     eachstudent = eachstudent.replacingOccurrences(of: "}", with: "")
     eachstudent = eachstudent.lowercased()
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
                    dataOfResult.failureName
                    dataOfResult.rankList            
        } else {
            print("Sorry you entered wrong email for \(nameAndId[0])")
        }
        } else {
            print("Sorry you entered wrong email for \(nameAndId[0])")
        }
 }
