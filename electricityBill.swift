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
func randomUnitCalculation(startRangeForRandomCalulation: Int, endRangeForRandomCalulation: Int) -> (Int) {
    var perDayUnitFortwoMonth = [Int]()
    for eachday in 0..<60 {
        let perDayUnit = Int.random(in:startRangeForRandomCalulation...endRangeForRandomCalulation)
        perDayUnitFortwoMonth.append(perDayUnit)
    }
    let units = perDayUnitFortwoMonth.reduce(0, +)
    return units
}
func amountCalculation(unitsAndRate: Dictionary<Double, Double>,fixedCharges: Double, unit: Int) -> Void {
    let orderedUnits = Array(unitsAndRate.keys).sorted(by: <)
    var units = Double(unit)
    var amount: Double = 0
    for key in 0..<orderedUnits.count {
        if key == 0 {
            if units < orderedUnits[key] {
               amount += units * (unitsAndRate[orderedUnits[key]]  ?? 0)
                break
            } else {
                amount += (orderedUnits[key] * (unitsAndRate[orderedUnits[key]]  ?? 0))
                units = units - orderedUnits[key] ?? 0
            }

        } else if key == orderedUnits.count-1 {
            amount += units * (unitsAndRate[orderedUnits[key]]  ?? 0)
            break
        } else {
            if units < orderedUnits[key]  - orderedUnits[key - 1]  {
               amount += (units * (unitsAndRate[orderedUnits[key]]  ?? 0))
                break
            } else {
                amount += (orderedUnits[key] - orderedUnits[key - 1]) * (unitsAndRate[orderedUnits[key]]  ?? 0)
                units = units - (orderedUnits[key] - orderedUnits[key - 1])
            }
        }
    }
    print("amount for two months \(amount + fixedCharges)")
}
enum electricBillCategory {
    case domestic
    case commercial
}
let selectedCategory: electricBillCategory = .domestic
switch selectedCategory {
case .domestic:
        amountCalculation(unitsAndRate: [100: 0, 200: 3.50, 500: 4.60, 501: 6.60], fixedCharges: 50, unit: randomUnitCalculation(startRangeForRandomCalulation: 1, endRangeForRandomCalulation: 10))
case .commercial:
        amountCalculation(unitsAndRate:[100: 5.00, 200: 8.05], fixedCharges: 290,  unit: randomUnitCalculation(startRangeForRandomCalulation: 10, endRangeForRandomCalulation: 100))
}
