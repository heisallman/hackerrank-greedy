import Foundation;

// Enter your code here

let firstLine = readLine()!.components(separatedBy: " ").map{ Int($0)! } // Number of test cases
let numOfContests = firstLine[0]
let numCanLose = firstLine[1]

var arrayContests = [(Int,Int)]()

for _ in 1 ... numOfContests { // Loop from 1 to n
    let input = readLine()!.components(separatedBy: " ").map{ Int($0)! } // Read a single line
    let tuple = (input[0],input[1])
    arrayContests.append(tuple)
}

var arrayContestsImportant = arrayContests.filter({
    $0.1 != 0
}).sorted(by: {
    $0.0 > $1.0
})

var arrayContestsNotImportant = arrayContests.filter({
    $0.1 != 1
})


var top3 = 0
var theRest = 0

for (index,num) in arrayContestsImportant.enumerated() {
    if index < numCanLose {
        top3 += num.0
    } else {
        theRest += num.0
    }
}

var sumNotImportant = arrayContestsNotImportant.reduce(0, { result, tuple in
    result + tuple.0
})


print(top3 - theRest + sumNotImportant)