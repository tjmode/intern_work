import Foundation
let bankBalance: Double = 1000000000
func amountCalculation(amount: Float, monthsOfTenure: Int, rateOfIntertrest: Float) -> (Double, Float){
    var totalInterestToPay: Float = 0
    var duplicateAmount: Float = amount
    for i in 0..<monthsOfTenure {
        let interestToPay: Float = Float((duplicateAmount * rateOfIntertrest) / (12 * 100))
        totalInterestToPay += interestToPay
        duplicateAmount += interestToPay
    }
    return (Double(totalInterestToPay) , duplicateAmount)
}
let ans = amountCalculation(amount: 2500000, monthsOfTenure: 120, rateOfIntertrest: 14)
print("interest will be paid by the Person X is \(ans.0)")
print("Banks’s balance \(bankBalance + ans.0 )")