struct Students{

    private let id: [Int]
   init (id: [Int]) {
       self.id = id
   }
   func firstFunc() -> Void {
       for each in id {
           if each % 2 == 0{
               even.append(each)
           } else {
               odd.append(each)
                }
       }
}
}
var even = [Int]()
var odd = [Int]()
var a = Students(id : [1,2,3,4,5,6])
