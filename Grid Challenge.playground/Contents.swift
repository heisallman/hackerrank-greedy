import Foundation;

// Enter your code here

let t = Int(readLine()!)!
var grid = [String]()


func gridChallenge(_ input: [String], of count: Int) -> String {
    let gridSplit = input.map({ $0.characters.map({ String($0) }).sorted() })
    
    var columns = [String]()
    for i in 0..<count {
        let letters = gridSplit.map({ $0[i] }).reduce("", { $0 + $1 })
        columns.append(letters)
    }
    
    let columnSplit = columns.map({ $0.characters.map({ String($0) }) })
    
    for column in columnSplit {
        let actual = column.joined()
        let compare = column.sorted().joined()
        if actual != compare {
            return "NO"
        }
    }
    return "YES"
}

for _ in 1...t {
    let n = Int(readLine()!)!
    grid = [String]()
    for _ in 1...n {
        let line = readLine()!
        grid.append(line)
    }
    print(gridChallenge(grid, of: n))
}
