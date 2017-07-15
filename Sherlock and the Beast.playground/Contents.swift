import Foundation

// Enter your code here

var t = Int(readLine()!)!

func decentNumber(_ y: Int) -> String {
    
    guard y > 1 else { return "-1" }
    
    var z = y
    
    while(z % 3 != 0) {
        z -= 5
    }
    
    if z < 0 {
        return "-1"
        
    } else {
        return String(repeating: "5", count: z) + String(repeating: "3", count: y-z)
    }
}

for _ in 1...t {
    var n = Int(readLine()!)!
    print(decentNumber(n))
}