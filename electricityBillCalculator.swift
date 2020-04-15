import Foundation
let unit = 480
func amountCal(unit: Int) -> Void {
    if unit <= 100{
        let value: Double = (Double ( unit) * 1.50)
        print(value)
    } else if unit <= 200{
        let value: Double = (Double ( unit) *  1.50) + 20.0
        print(value)
    } else if unit <= 500{
        let value: Double = (100.0 * 1.50) + (100.0 * 2.0) + ( Double(unit - 200) * 3.00)
        print(unit - 200)
        print(value + 30.0)
    } else if unit > 500{
         let value: Double = (100.0 * 1.50) + (100.0 * 3.50) + (300  * 4.60) + (Double (abs(unit - 500 )) * 6.60) 
         print(value  + 50.0)
    }
}
func amountForCommercial(unit: Int) -> Void{
    if unit <= 100{
        let value: Double = (Double (unit) * 5.00 ) + 290
        print(value)
    } else if unit > 100 {
       let value: Double = (100.0 * 5.00) + ( Double (unit - 100) * 8.05) + 290
       print(value)
    }
}
var a = amountCal(unit: unit)
var b = amountForCommercial(unit: unit)
