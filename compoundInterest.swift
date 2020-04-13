/*There’s bank in the name of Ivy Bank. Bank’s Balance 100,00,00,000.

Person X has an account in Ivy Bank. His/her account number is XXXXXXXXXX.

And Person X taken a loan amount of 25,00,000 for an interest rate of 14% and the loan tenure is 120 months. 
Every month interest has to be recalculated from the principal amount. At the end of 120 month, 
how much interest will be paid by the Person X.
 Also at the end of 120 months what will be the Banks’s balance.
*/
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
