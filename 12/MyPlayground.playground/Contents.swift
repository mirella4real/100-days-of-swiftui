import UIKit

// Optionals, unwrapping and typecassting

// --------------
// Optionals
// Allows you to assign a nil value when declaring a var
// Use ? after the type
// --------------

var age:Int? = nil
age = 38


// --------------
// Unwrapping optionals
// nil is empty memory
// unwrapping allows you to check for value in a variable before using it
// use if let
// --------------

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("missing name")
}


// --------------
// Alternative to if let is guard let
// guard let allows you to deal with problems in function immediately and expects you to break out
// --------------

func greet(_ name: String?){
    guard let unwrapped = name else {
        print("you did not provide a name")
        return
    }
    
    // this is happy path
    print("Hello, \(unwrapped)")
}

greet(name)


// --------------
// Force unwrapping
// sometimes you know for sure that a value is not nil
// use !, but only when it is safe, as it will crash your code
// --------------

//convert string to int, and use ! to force
let str = "5"
let num = Int(str)!



// --------------
/* Implicitly unwrapped optionals
    These exist because sometimes a variable will start life as nil, but will always have a value before you have to use it
    These do not need to be unwrapped in order to use them. Can be used as if they are not optionals at all. No need to use if let or guard let
    WARNING - code will crash if you try to use them and they have a nil value
 */
// --------------

let implicitUnwrappedAge: Int! = nil


// --------------
// Nil coalescing operator - ??
// Unwraps an optional and returns the value inside if there is one. If the optional was nil, then a default value is used instead.
// --------------

func username(for id: Int) -> String? {
    if id == 1 {
        return "Gary Lightbody"
    } else {
        return nil
    }
}

let uname = username(for: 15) ?? "Anonymous"


// --------------
// Optional Chaining
// Chaining with . operator can be optional when using ?.
// in the case of a.b.c  b is optional when a.b?.c
// --------------

let namesArray = ["John", "Paul", "George", "Ringo"]
let beatle = namesArray.first?.uppercased()


// --------------
// Optional try
// --------------

//declare an enum - your own error
enum PasswordError: Error {
    case obvious
}

//This function will throw an error or return boolean
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

//let's wrap a fucntion call in do,try,catch
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}

// there are two alternatives to try, the first is try?
if let passwordResult = try? checkPassword("password") {
    print("Result was \(passwordResult)")
} else {
    print("D'oh")
}

// the other option is try!, when you know the function will not fail

try! checkPassword("sekrit")
print("ok!")



// --------------
// Failable initializers
// when force unwraping, these are initializers that may or may not work and return nil
// use init?() in a struct and return nil if something goes wrong
// --------------

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}



// --------------
// Type casting
// as? allows us to attempt to cast to another type
// --------------


class Animal {}
class Fish: Animal {}
class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

// Swift will make this an array of Animal type
let pets = [Fish(), Dog(), Fish(), Dog()]

// attempt to cast to Dog so as to call the makeNoise() method

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}


