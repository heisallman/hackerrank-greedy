import Foundation;

// Enter your code here

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let numFlowers = input[0]
let numPeople = input[1]

let flowerCosts = Array(readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted().reversed())

func greedyFlorist(_ flowers: [Int]) -> Int {
    
    var people:[Int] = []
    
    for i in 1...numFlowers {
        for _ in 1...numPeople {
            if people.count < numFlowers {
                people.append(i)
            } else {
                break
            }
        }
    }
    
    return flowerCosts.enumerated().map({ (index,flower) in
        flower * people[index]
    }).reduce(0, +)
}


print(greedyFlorist(flowerCosts))