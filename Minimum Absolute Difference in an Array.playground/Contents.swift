import Foundation;

// Enter your code here

let n = Int(readLine()!)!

let array = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let sortedArray = Array(array.sorted().reversed())
let difference = sortedArray[0] - sortedArray[1]
var minOfArray = abs(sortedArray.last!)

for i in 1..<sortedArray.count {
    if abs(sortedArray[i] - sortedArray[i-1]) <= minOfArray {
        minOfArray = abs(sortedArray[i] - sortedArray[i-1])
    }
}

print(minOfArray)