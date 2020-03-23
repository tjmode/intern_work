import Foundation
var batch = [["avail": 112, "name": "B1", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 0, "name": "B2", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 202, "name": "B3", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 11, "name": "B3", "caSe":0, "outer": 0, "pieces": 0]
            ]
let caSe = 111
let outer = 0
let piece = 1
var orderedItems = 211
for products in 0..<batch.count {
    if orderedItems >= caSe ,caSe > 0, (batch[products]["avail"] as? Int ?? 0) >= caSe {
        var howManyCaseCanKeep = orderedItems / caSe
        var howManyCaseCanKeepInThisBatch = (batch[products]["avail"] as! Int ?? 0) / caSe
        if howManyCaseCanKeepInThisBatch >= howManyCaseCanKeep {
        batch[products]["caSe"] = howManyCaseCanKeep
        batch[products]["avail"] = (batch[products]["avail"] as? Int ?? 0) -  howManyCaseCanKeep * caSe
 
        orderedItems = orderedItems - howManyCaseCanKeep * caSe
       
        }
        else {
        orderedItems = orderedItems - howManyCaseCanKeepInThisBatch * caSe
        batch[products]["avail"] = (batch[products]["avail"] as? Int ?? 0) -  howManyCaseCanKeepInThisBatch * caSe
        batch[products]["caSe"] = howManyCaseCanKeepInThisBatch
    }
        }
    
    if orderedItems >= outer , outer > 0,(batch[products]["avail"] as? Int ?? 0) >= outer {
        let howManyOuterCanKeep = orderedItems / outer
        var howManyOuterCanKeepInThisBatch = (batch[products]["avail"] as? Int ?? 0) / outer
        if howManyOuterCanKeepInThisBatch >= howManyOuterCanKeep  {
        batch[products]["outer"] = howManyOuterCanKeep
        batch[products]["avail"] = (batch[products]["avail"] as? Int ?? 0) -  howManyOuterCanKeep * outer
        orderedItems = orderedItems - howManyOuterCanKeep * outer
        }
        else {
        orderedItems = orderedItems - howManyOuterCanKeepInThisBatch * outer
        batch[products]["avail"] = (batch[products]["avail"] as? Int ?? 0) -  howManyOuterCanKeepInThisBatch * outer
        batch[products]["outer"] = howManyOuterCanKeepInThisBatch
    }
    }
    if orderedItems >= piece, piece > 0, (batch[products]["avail"] as? Int ?? 0) >= piece {
            if orderedItems <= (batch[products]["avail"]as? Int ?? 0 ) {
                batch[products]["pieces"] = orderedItems
                 batch[products]["avail"] = (batch[products]["avail"] as? Int ?? 0) - orderedItems
                orderedItems = orderedItems - orderedItems
            }
            else {
                batch[products]["pieces"] = (batch[products]["avail"] as? Int ?? 0)
                orderedItems = orderedItems - (batch[products]["avail"] as? Int ?? 0)
                batch[products]["avail"] = 0
             }
            }
    
}
if orderedItems <= 0 {
    print(batch)  
}
else {
 print("Sorry stock Not avaiable for \(orderedItems)")
}
