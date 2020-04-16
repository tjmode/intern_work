/*Need to calculate Electricity bill for every two months based on below tariffs.  
For domestic
For first 100 units Rs 0/unit
For next 100 units Rs 3.50/unit
For next 300 units Rs 4.60/unit
For unit above 500  Rs 6.60/unit
Fixed charges for two months Rs.50/service

For Commercial
For first 100 units Rs 5.00/unit
Consumption above 100 units bi monthly 8.05/unit
Fixed charges for two months Rs.290/service

Get random numbers as daily consumable units. For domestic random number generation should be in between 1 - 10. For commercial 10 - 100
*/

import Foundation
var units = 222
var amount:Double = 0
let stageOneRateForDomestic: Double = 0
let stageTwoRateForDomestic: Double = 3.50
let stageThreeRateForDomestic: Double = 4.60
let stageFourRateForDomestic: Double = 6.60
let stageOneRateForCommercial: Double = 5.00
let stageTwoRateForCommercial: Double = 8.05
let fixedServiceChargeForDomestic: Double = 50
let fixedServiceChargeForCommercial: Double = 290
let choice = 2 // 1 ForDomestic , 2 ForCommercial
func amountCalculation(unit: Int, rate: Double) -> (Double){
    return Double(unit) * rate
}
if choice == 1{
    if units > 0{
        if units < 100 {
            var amountGeting = amountCalculation(unit: units, rate:stageOneRateForDomestic)
            amount += amountGeting
        } else {
            var amountGeting = amountCalculation(unit: 100, rate:stageOneRateForDomestic)
            amount += amountGeting
        }
        units = units - 100
    } 
    if units > 0 {
        if units < 100 {
            var amountGeting = amountCalculation(unit: units, rate:stageTwoRateForDomestic)
            amount += amountGeting
        } else {
            var amountGeting = amountCalculation(unit: 100, rate:stageTwoRateForDomestic)
            amount += amountGeting
        }
        units = units - 100
    }
    if units > 0 {
         if units < 300 {
            var amountGeting = amountCalculation(unit: units, rate:stageThreeRateForDomestic)
            amount += amountGeting
        } else {
            var amountGeting = amountCalculation(unit: 300, rate:stageThreeRateForDomestic)
            amount += amountGeting
        }
        units = units - 300
    }
    if units > 0 {
        var amountGeting = amountCalculation(unit: units, rate:stageFourRateForDomestic)
        amount += amountGeting
    }
    print(amount + fixedServiceChargeForDomestic)
}
if choice == 2 {
    if units > 0 {
            if units < 100 {
            var amountGeting = amountCalculation(unit: units, rate:stageOneRateForCommercial)
            amount += amountGeting
        } else {
            var amountGeting = amountCalculation(unit: 100, rate:stageOneRateForCommercial)
            amount += amountGeting
        }
        units = units - 100
    }
    if units > 0{
        var amountGeting = amountCalculation(unit: units, rate:stageTwoRateForCommercial)
        amount += amountGeting   
    }
    print(amount + fixedServiceChargeForCommercial)
}
