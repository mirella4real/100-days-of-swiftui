import UIKit

// Loops
// ------------------------------------------------
// for loops are used to loop over arrays and ranges
// each iteration will pull one item and assign to a
// constant
// ------------------------------------------------

let count = 1...10  //inclusive range operator
for number in count {
    print("Number is \(number)")
}

let albums = ["Wildness", "Fallen Empires", "A Hundred Million Suns", "Eyes Open", "Final Straw"]
for album in albums {
    print("Snow Patrol's \(album) is on Apple Music")
}

// if you don't need the constant and only need to repeat an action, use an underscore to avoid creating needless values

for _ in 1...3 {
    print("Beetlejuice")
}


// ------------------------------------------------
// While loops
// ------------------------------------------------

print("While loop")
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

// ------------------------------------------------
// Repeat loops are the equivalend of do while
// always executes once
// ------------------------------------------------
print("Repeat loop")
number = 1
repeat {
    print(number)
    number += 1
} while number <= 20


// ------------------------------------------------
// Break keyword to exit loop
// ------------------------------------------------

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print ("Stop!")
        break
    }
    
    countDown -= 1
}

// ------------------------------------------------
// Nested loops and breaking out of them
// label loops then use that label to break
// ------------------------------------------------

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("Breaking here")
            break outerLoop
        }
    }
}


// ------------------------------------------------
// continue keyword to skip items
// in this example, items with remainders will be skipped
// ------------------------------------------------

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

// ------------------------------------------------
// infinite loops
// use while true to create an infinite loop
// make sure you have a break condition
// ------------------------------------------------

var counter = 0

while true {
    print("counter \(counter)")
    counter += 1
    
    if counter == 50 {
        print("break condition met")
        break
    }
}
