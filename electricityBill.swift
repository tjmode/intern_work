import Foundation
var units = 222
var amount:Double = 0
let stageOneRate : Double = 0
let stageTwoRate : Double = 3.50
let stageThreeRate : Double = 4.60
let stageFourRate : Double = 6.60
func amountCalculation(unit: Int, rate: Double) -> (Double){
    return Double(unit) * rate
}
if units > 0{
    var amountGeting = amountCalculation(unit: units, rate:stageOneRate)
    amount += amountGeting
    units = units - 100
} 
if units > 0 {
    if units < 100 {
        var amountGeting = amountCalculation(unit: units, rate:stageTwoRate)
        amount += amountGeting
    } else {
        var amountGeting = amountCalculation(unit: 100, rate:stageTwoRate)
        amount += amountGeting
    }
    units = units - 100
}
if units > 0 {
     if units < 300 {
        var amountGeting = amountCalculation(unit: units, rate:stageThreeRate)
        amount += amountGeting
    } else {
        var amountGeting = amountCalculation(unit: 300, rate:stageThreeRate)
        amount += amountGeting
    }
    units = units - 300
}
if units > 0 {
    var amountGeting = amountCalculation(unit: units, rate:stageFourRate)
    amount += amountGeting
}
print(amount)
