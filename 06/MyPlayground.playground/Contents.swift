import UIKit

/*
    Closures - Day 1
    Closures return an integer
    Values created outside the closure but used inside will remain available only for the life of the closure
    Closures store functionality -
    * Running code after a delay
    * Running code upon event (after animation, when download is finished, user action)
 */

// --------------------
// Creating basic Closures
// Resembles an anonymous function assigned to a variable
// --------------------

let driving = {
    print("I'm driving in my car")
}

driving()

// --------------------
// Closure parameters
// parameters are defined inside the braces
// keyword "in" is used to mark end of param list
// parameters labels are not used in closure calls
// --------------------

let drivingTo = { (place: String) in
    print("I'm going to \(place) in my car")
}

drivingTo("Austin")

// --------------------
// Returning values from a closure
// Use arrow notation to declare return type
// --------------------

let drivingToWithReturn = { (place: String) -> String in
    return "I'm driving to \(place) in my car"
}

let message = drivingToWithReturn("Austin")
print(message)


// --------------------
// Closures as parameters
// To declare as parameter, use the type () -> Void
// --------------------

func travel(action: () -> Void){
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}

travel(action: driving)

// Question - is () -> Void valid when a closure takes
// a parameter and returns a value?


// --------------------
// Trailing closure syntax
// IF THE LAST PARAMETER TO A FUNCTION IS A CLOSURE
// instead of declaring a closure, the closure body
// can be passed when calling a function that accepts
// a closure
// --------------------

travel() {
    print("I'm driving in my car")
    print("This is the closure, being declared and passed at the same time")
}

travel {
    print("The parenthesis can be elimiated if there are no other params")
    print("This is the closure, being declared and passed at the same time")
}


