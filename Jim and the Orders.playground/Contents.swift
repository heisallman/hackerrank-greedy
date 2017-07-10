import Foundation;

// Enter your code here

let n = Int(readLine()!)!
var dictionary = [Int:Int]()
var orders = [[Int]]()

for _ in 1...n {
    let line = readLine()!.components(separatedBy:" ").map { Int($0)! }
    orders.append(line)
}

let result = orders.map({
    $0.reduce(0, {
        $0 + $1
    })
})

for i in 0..<result.count {
    dictionary.updateValue(result[i], forKey: i + 1)
}

print(dictionary.sorted(by: {
    $0.0.key < $0.1.key
}).sorted(by: {
    $0.0.value < $0.1.value
}).map({
    $0.key
}).map({
    String($0)
}).joined(separator: " "))

