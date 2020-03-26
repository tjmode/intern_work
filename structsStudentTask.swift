import Foundation
struct students{
    var name: String
    var id: Int
    var pythonMark: Int
    var swiftMark: Int
    var cMArk: String 
    func totalMark() -> [String] {
        var totalMark = ["\((pythonMark + swiftMark) / 2)",name]
        return totalMark
    }
    func allClear() -> Int {
        let marks = [pythonMark,swiftMark]
        var rankholders = [Int]()
        let failedStudents = marks.filter { $0 <= 44 }
        if failedStudents == [] {
            var rankholders = marks.reduce(0, +)
            return rankholders
        }
        else { 
            
        }
    }

}
let studentSheet = ["tony,1, {python:67, swift:45, c:10}","yyy,1, {python:67, swift:95, c:90}","zzz,1, {python:7, swift:55, c:80}"]
for eachstudent in studentSheet {
    var nameAndId = eachstudent.components(separatedBy: ",")
    var tempPythonMark = eachstudent.components(separatedBy: "python:")
    let pythonMark = tempPythonMark[1].components(separatedBy: ",")
    let tempSwiftMark = eachstudent.components(separatedBy: "swift:")
    let swiftMark = tempSwiftMark[1].components(separatedBy: ",")
    let tempCMark = eachstudent.components(separatedBy: "c:")
    let cMark = tempCMark[1].components(separatedBy: ",")
    let ans =  students(name: nameAndId[0], id: Int(nameAndId[1]) ?? 0,pythonMark: Int(pythonMark[0]) ?? 0,swiftMark: Int(swiftMark[0]) ?? 0, cMArk: cMark[0] )
    print(ans.allClear())
}
