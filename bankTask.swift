/*There’s bank in the name of Ivy Bank. Bank’s Balance 100,00,00,000.
Person X has an account in Ivy Bank. His/her account number is XXXXXXXXXX.
And Person X taken a loan amount of 25,00,000 for an interest rate of 14% and the loan tenure is 120 months. 
Every month interest has to be recalculated from the principal amount. At the end of 120 month, 
how much interest will be paid by the Person X.
 Also at the end of 120 months what will be the Banks’s balance.
*/
import Foundation
func compoundInterest(amount: Double, monthsOfTenure: Double, rateOfIntertrest: Double) -> (Double){
    var totalInterestToPay: Double = 0
    var duplicateAmount: Double = amount
    for each in 0..<Int(monthsOfTenure) {
        let interestToPay: Double = Double((duplicateAmount * rateOfIntertrest) / (12 * 100))
        totalInterestToPay += interestToPay
        duplicateAmount += interestToPay
    }
    return (totalInterestToPay)
}
func simpleInterest(amount: Double, monthsOfTenure: Double, rateOfIntertrest: Double) -> (Double){
   let totalInterestToPay: Double =  amount * (rateOfIntertrest / 100 ) * (monthsOfTenure / 12) 
   return totalInterestToPay
}
let bankBalance: Double = 1000000000
// loan tenure : example 1 year 2 months, so months = 2 and years = 2 
let years: Double = 1
let months: Double = 0
let monthsOfTenure: Double = months + (years * 12)
let loanAmount: Double = 2500000
let isItCompoundInterest = "no" // YES or NO
let rateOfIntertrestPerYear: Double = 14 
if loanAmount <= bankBalance {
    if isItCompoundInterest.lowercased() == "yes" {
        let totalInterestToPay = compoundInterest(amount: Double(loanAmount), monthsOfTenure: monthsOfTenure, rateOfIntertrest: rateOfIntertrestPerYear)
        print("interest will be paid by the Person X is \(totalInterestToPay)")
        print("Banks’s balance \(bankBalance + totalInterestToPay )")
        print("Totalamount Need to pay by x is \(loanAmount + totalInterestToPay)")
    } else if  isItCompoundInterest.lowercased() == "no"{
        let totalInterestToPay = simpleInterest(amount: loanAmount, monthsOfTenure: monthsOfTenure, rateOfIntertrest: rateOfIntertrestPerYear)
        print("interest will be paid by the Person X is \(totalInterestToPay)")
        print("Totalamount Need to pay by x is \(totalInterestToPay + loanAmount)")
        print("Banks’s balance \(bankBalance + totalInterestToPay )")
    } else {
        print("YOU made mistake at isItCompoundInterest")
    }
} else {
    print("NO Amount in bank")
}
