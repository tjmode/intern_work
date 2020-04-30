import Foundation
extension Array {
    func chopped() -> (Element, [Element])? {
        guard let x = self.first else { return nil }
        return (x, Array(self.suffix(from: 1)))
    }
}
extension Array {
    func interleaved(_ element: Element) -> [[Element]] {
        guard let (head, rest) = self.chopped() else { return [[element]] }
        return [[element] + self] + rest.interleaved(element).map { [head] + $0 }
    }
}
extension Array {
    var permutations: [[Element]] {
        guard let (head, rest) = self.chopped() else { return [[]] }
        return rest.permutations.flatMap { $0.interleaved(head) }
    }
}

var permutations = [1, 2, 3].permutations // places and don't put the starting place 
let inputs = [[nil,2.4,6.8,4.7],[2.4,nil,6,5.1],[6.8,6,nil,5.9,],[4.7,5.1,5.9,nil]]
let permutationNumber = 2
for each in permutations {
    var startValue = 0 // starting place 
    let endPlace = 0 //
    var ans: Double = 0
    for i in each {
       ans += inputs[startValue][i] ?? 0
       startValue = i
    }
    print(ans + (inputs[startValue][endPlace] ?? 0) )
    print(each)
}
