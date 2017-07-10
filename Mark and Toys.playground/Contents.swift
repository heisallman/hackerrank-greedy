import Foundation;

// Enter your code here

let array = readLine()!.components(separatedBy:" ").map { Int($0)! }
let toys = readLine()!.components(separatedBy:" ").map { Int($0)! }

let numOfToys = array[0]
let money = array[1]

let filteredToys = toys.filter({ $0 < money }).sorted()
var result = [Int]()
var total = 0

for toy in filteredToys {
    let total = result.reduce(0, +)
    if (total + toy) < money {
        result.append(toy)
    }
}

print(result.count)