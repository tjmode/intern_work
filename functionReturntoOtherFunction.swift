struct Students{

    private let id: Int
   init (id: Int) {
       self.id = id
   }
   func firstFunc() -> Int{
       var id1 = id + 10
       return id1
   }
   func secondFunc(value: firstFunc()) -> Void{
       
   }
}
var a = Students(id : 1)
a.secondFunc()
