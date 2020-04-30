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

var permutations = [1, 2].permutations // places and don't put the starting place 
let inputs = [[nil,2,3],[1,nil,3],[1,2,nil]]
let permutationNumber = 2
for each in permutations {
    var startValue = 0 // starting place 
    var ans = 0
    for i in each {
       ans += inputs[startValue][i] ?? 0
       startValue = i
    }
    print(ans)
}
