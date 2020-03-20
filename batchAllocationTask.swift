import Foundation
var batch = [["avail": 100, "name": "B1", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 125, "name": "B2", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 25, "name": "B3", "caSe":0, "outer": 0, "pieces": 0]
]
let caSe = 50
let outer = 25
let piece = 1
var orderedItems = 22512
for products in 0..<batch.count {
    //var available = batch[c]["avail"] as! Int
    if orderedItems >= 50  {
        if batch[products]["avail"] as! Int >= caSe{
        var howManyCaneCanKeep = orderedItems / caSe
        var howManyCaneCanKeepInThisBatch = batch[products]["avail"] as! Int / caSe
        orderedItems = orderedItems - howManyCaneCanKeepInThisBatch * caSe
        batch[products]["avail"] = batch[products]["avail"] as! Int -  howManyCaneCanKeepInThisBatch * caSe
        batch[products]["caSe"] = howManyCaneCanKeepInThisBatch
    }
    }
    if orderedItems >= outer {
        if batch[products]["avail"] as! Int >= outer{
        var howManyCaneCanKeepInThisBatch = batch[products]["avail"] as! Int / outer
         orderedItems = orderedItems - howManyCaneCanKeepInThisBatch *  outer
         batch[products]["avail"] = batch[products]["avail"] as! Int -  howManyCaneCanKeepInThisBatch *  outer
         batch[products]["outer"] = howManyCaneCanKeepInThisBatch
    } 
    }
    if orderedItems >= piece {
        if batch[products]["avail"] as! Int >= piece {
            if orderedItems <= (batch[products]["avail"] as! Int) {
                batch[products]["pieces"] = orderedItems
                 batch[products]["avail"] = (batch[products]["avail"] as! Int) - orderedItems
                orderedItems = orderedItems - orderedItems
            }
            else {
                batch[products]["pieces"] = (batch[products]["avail"] as! Int)
                batch[products]["avail"] = 0
                orderedItems = orderedItems - (batch[products]["avail"] as! Int)
            }
            }
    }
}
if orderedItems <= 0 {
    print(batch)
   
}
else {
 print("Sorry stock Not avaiable for \(orderedItems)")
}
