import Foundation;

// Enter your code here


let q = Int(readLine()!)!

func permutations(a:[Int], b:[Int], k:Int) -> String {
    
    let sortedA = a.sorted()
    let sortedB = Array(b.sorted().reversed())
    var sortedC = Set<Int>()
    
    for (i,_) in sortedA.enumerated() {
        let sum = sortedA[i] + sortedB[i]
        sortedC.insert(sum)
    }
    
    for num in sortedC {
        if num < k {
            return "NO"
        }
    }
    
    return "YES"
}

for _ in 1...q {
    let input = readLine()!.components(separatedBy:" ").map { Int($0)! }
    let size = input[0]
    let k = input[1]
    let a = readLine()!.components(separatedBy:" ").map { Int($0)! }
    let b = readLine()!.components(separatedBy:" ").map { Int($0)! }
    print(permutations(a: a, b: b, k: k))
}