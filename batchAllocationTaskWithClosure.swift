import Foundation
let batchAllocationTask :([String : Any]) -> ([String : Any]) = { tempProducts in
var products = tempProducts //Is to change Let into Var 
let allocationSize = [50,25,1]
var orderedItems = 102
let allocationName = ["case","outer","pieces"]
for size in 0..<allocationSize.count {
    if orderedItems >= allocationSize[size] {
        if products["avail"] as! Int >= allocationSize[size] {
       
        var howManyCaseCanKeep = orderedItems / allocationSize[size]
        var howManyCaseCanKeepInThisBatch = products["avail"] as! Int / allocationSize[size]
        if howManyCaseCanKeepInThisBatch >= howManyCaseCanKeep {
       
        products[allocationName[size]] = howManyCaseCanKeep
        products["avail"] = products["avail"] as! Int -  howManyCaseCanKeep * allocationSize[size]
        orderedItems = orderedItems - howManyCaseCanKeep * allocationSize[size]
        } else {

        orderedItems = orderedItems - howManyCaseCanKeepInThisBatch * allocationSize[size]
        products["avail"] = products["avail"] as! Int -  howManyCaseCanKeepInThisBatch * allocationSize[size]
        products[allocationName[size]] = howManyCaseCanKeepInThisBatch
    }
        }
    }

}
return products 
}

var batch = [["avail": 29, "name": "B1", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 29, "name": "B2", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 202, "name": "B3", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 202, "name": "B3", "caSe":0, "outer": 0, "pieces": 0]
            ]
for product in 0..<batch.count{
   let allocatedList =  batchAllocationTask(batch[product])
   batch[product] = allocatedList
}
print(batch)
