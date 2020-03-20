import Foundation
var batch = [["avail": 100, "name": "B1", "cane":0, "outer": 0, "pieces": 0],
            ["avail": 149, "name": "B2", "cane":0, "outer": 0, "pieces": 0],
            ["avail": 26, "name": "B3", "cane":0, "outer": 0, "pieces": 0]
]
let cane = 50
let outer = 25
let piece = 1
var c = 0 
var orderedItems = 200
for products in batch {
    print(batch[c]["avail"]!)
   print(orderedItems)
    //var available = batch[c]["avail"] as! Int
    if batch[c]["avail"] as! Int >= 50  {
        var howManyCaneCanKeep = orderedItems / cane
        var howManyCaneCanKeepInThisBatch = batch[c]["avail"] as! Int / cane
        orderedItems = orderedItems - howManyCaneCanKeepInThisBatch * 50
        batch[c]["avail"] = batch[c]["avail"] as! Int -  howManyCaneCanKeepInThisBatch * 50
        batch[c]["cane"] = howManyCaneCanKeepInThisBatch
    }
print(batch[c]["avail"]!)
    if batch[c]["avail"] as! Int >= outer {
        var howManyCaneCanKeepInThisBatch = batch[c]["avail"] as! Int / outer
         orderedItems = orderedItems - howManyCaneCanKeepInThisBatch * 25
         batch[c]["avail"] = batch[c]["avail"] as! Int -  howManyCaneCanKeepInThisBatch * 25
         batch[c]["outer"] = howManyCaneCanKeepInThisBatch
    } 
    // if batch[c]["avail"] as! Int >= 1 {
    //      var howManyCaneCanKeepInThisBatch = batch[c]["avail"] as! Int / 1
    //     orderedItems = orderedItems - howManyCaneCanKeepInThisBatch * 1
    // print(howManyCaneCanKeepInThisBatch)
    //      batch[c]["avail"] = batch[c]["avail"] as! Int -  howManyCaneCanKeepInThisBatch * 1
    //      batch[c]["pieces"] = howManyCaneCanKeepInThisBatch
    // }
c = c + 1
}
print(batch)
