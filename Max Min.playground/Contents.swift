import Foundation;

// Enter your code here

let n = Int(readLine()!)!
let k = Int(readLine()!)!
var numbers = [Int]()

for _ in 1...n {
    let line = Int(readLine()!)!
    numbers.append(line)
}

numbers = numbers.sorted()

var minDiff:Int?

for (index,number) in numbers.enumerated() {
    
    if index < numbers.count - k + 1 {
        let min = numbers[index]
        let max = numbers[index + (k-1)]
        let sum = max-min
        
        if minDiff == nil {
            minDiff = sum
        } else {
            if sum < minDiff! {
                minDiff = sum
            }
        }
    }
}

print(minDiff!)