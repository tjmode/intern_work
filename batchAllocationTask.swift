import Foundation
var batch = [["avail": 29, "name": "B1", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 25, "name": "B2", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 202, "name": "B3", "caSe":0, "outer": 0, "pieces": 0]
            ]

let caSe = 50
let outer = 25
let piece = 1
var orderedItems = 100
for products in 0..<batch.count {
    if orderedItems >= 50  {
        if batch[products]["avail"] as! Int >= caSe {
    
        var howManyCaseCanKeep = orderedItems / caSe
        var howManyCaseCanKeepInThisBatch = batch[products]["avail"] as! Int / caSe
        if howManyCaseCanKeepInThisBatch >= howManyCaseCanKeep {
        batch[products]["caSe"] = howManyCaseCanKeep
        batch[products]["avail"] = batch[products]["avail"] as! Int -  howManyCaseCanKeep * caSe
 import Foundation
var batch = [["avail": 29, "name": "B1", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 25, "name": "B2", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 202, "name": "B3", "caSe":0, "outer": 0, "pieces": 0],
            ["avail": 202, "name": "B3", "caSe":0, "outer": 0, "pieces": 0]
            ]

let caSe = 50
let outer = 25
let piece = 1
var orderedItems = 100
for products in 0..<batch.count {
    if orderedItems >= caSe  {
        if batch[products]["avail"] as! Int >= caSe {
    
        var howManyCaseCanKeep = orderedItems / caSe
        var howManyCaseCanKeepInThisBatch = batch[products]["avail"] as! Int / caSe
        if howManyCaseCanKeepInThisBatch >= howManyCaseCanKeep {
        batch[products]["caSe"] = howManyCaseCanKeep
        batch[products]["avail"] = batch[products]["avail"] as! Int -  howManyCaseCanKeep * caSe
 
        orderedItems = orderedItems - howManyCaseCanKeep * caSe
       
        }
        else {
        orderedItems = orderedItems - howManyCaseCanKeepInThisBatch * caSe
        batch[products]["avail"] = batch[products]["avail"] as! Int -  howManyCaseCanKeepInThisBatch * caSe
        batch[products]["caSe"] = howManyCaseCanKeepInThisBatch
    }
        }
    }
    if orderedItems >= outer {
               if batch[products]["avail"] as! Int >= outer {
        let howManyOuterCanKeep = orderedItems / outer
        var howManyOuterCanKeepInThisBatch = batch[products]["avail"] as! Int / outer
        if howManyOuterCanKeepInThisBatch >= howManyOuterCanKeep  {
        batch[products]["outer"] = howManyOuterCanKeep
        batch[products]["avail"] = batch[products]["avail"] as! Int -  howManyOuterCanKeep * outer
        orderedItems = orderedItems - howManyOuterCanKeep * outer
        }
        else {
        orderedItems = orderedItems - howManyOuterCanKeepInThisBatch * outer
        batch[products]["avail"] = batch[products]["avail"] as! Int -  howManyOuterCanKeepInThisBatch * outer
        batch[products]["outer"] = howManyOuterCanKeepInThisBatch
    }
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
                orderedItems = orderedItems - (batch[products]["avail"] as! Int)
                batch[products]["avail"] = 0
             }
            }
    }
}
if orderedItems <= 0 {
    print(batch)  
}
else {
 print("Sorry stock Not avaiable for \(orderedItems - 1)")
}

        orderedItems = orderedItems - howManyCaseCanKeep * caSe
       
        }
        else {
        orderedItems = orderedItems - howManyCaseCanKeepInThisBatch * caSe
        batch[products]["avail"] = batch[products]["avail"] as! Int -  howManyCaseCanKeepInThisBatch * caSe
        batch[products]["caSe"] = howManyCaseCanKeepInThisBatch
    }
        }
    }
    if orderedItems >= outer {
               if batch[products]["avail"] as! Int >= outer {
        let howManyOuterCanKeep = orderedItems / outer
        var howManyOuterCanKeepInThisBatch = batch[products]["avail"] as! Int / outer
        if howManyOuterCanKeepInThisBatch >= howManyOuterCanKeep  {
        batch[products]["outer"] = howManyOuterCanKeep
        batch[products]["avail"] = batch[products]["avail"] as! Int -  howManyOuterCanKeep * outer
        orderedItems = orderedItems - howManyOuterCanKeep * outer
        }
        else {
        orderedItems = orderedItems - howManyOuterCanKeepInThisBatch * outer
        batch[products]["avail"] = batch[products]["avail"] as! Int -  howManyOuterCanKeepInThisBatch * outer
        batch[products]["outer"] = howManyOuterCanKeepInThisBatch
    }
        }
    }
    if orderedItems >= piece {
        if batch[products]["avail"] as! Int >= piece {
            print("3")
            if orderedItems <= (batch[products]["avail"] as! Int) {
                batch[products]["pieces"] = orderedItems
                 batch[products]["avail"] = (batch[products]["avail"] as! Int) - orderedItems
                orderedItems = orderedItems - orderedItems
            }
            else {
                batch[products]["pieces"] = (batch[products]["avail"] as! Int)
                orderedItems = orderedItems - (batch[products]["avail"] as! Int)
                batch[products]["avail"] = 0
             }
            }
    }
}
if orderedItems <= 0 {
    print(batch)  
}
else {
 print("Sorry stock Not avaiable for \(orderedItems - 1)")
}
