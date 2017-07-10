import Foundation;

// Enter your code here

let n = Int(readLine()!)!

let calories = readLine()!.components(separatedBy: " ").map{ Int($0)! }


let caloriesReversed = Array(calories.sorted().reversed())
var miles:Decimal = 0

for (index,cupcake) in caloriesReversed.enumerated() {
    let multiple = pow(2, index)
    let decimalCupcake = Decimal(cupcake)
    miles += decimalCupcake * multiple
}


print(miles)

