import UIKit

// More Closures


// -------------------
// Closures and parameters when they accept parameters
// instead of () -> Void, declare the type in side ()
// -------------------

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("Austin")
    print("I've arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

// -------------------
// Using closures as parameters when they return values
// instead of () -> Void, declare param and return type
// -------------------

func travelTo(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Austin, TX")
    print(description)
    print("It took 3 days but I arrived!")
}

travelTo { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// -------------------
// Shorthand parameter names
// Swift lets us remove the param and return types and return keyword
// Swift has shorthand syntax that let it provide automatic names for closure params
// -------------------

travelTo {
    "I'm driving back from \($0) in my car"
}

