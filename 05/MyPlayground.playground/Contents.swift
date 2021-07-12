import UIKit

// -----------------------
// Functions
// -----------------------
func printHelp() {
    let message = """
    Welcome to MyApp!
    
    Still learning about multi-line strings
    """
    
    print(message)
}

printHelp()

// -----------------------
// Accepting Parameters
// Interesting... you have to assign the param value to var name???
// -----------------------

func square(number: Int){
    print(number * number)
}

square(number: 8)


// -----------------------
// Returning values
// Could use Tuples when returning multiple values
// Arrow notation used to signinfy return value
// -----------------------

func returnSquare(number: Int) -> Int {
    return number * number
}

let result = returnSquare(number: 8)
print(result)


// -----------------------
// Parameter labels
// Swift allows an internal and external label for parameters
// the idea is to allow more natural syntax - IMHO, this leads to confusion
// declare by leaving space between labels in fucntion declaration
// -----------------------

func sayHello(to name: String){
    print("Hello \(name)!")
}

sayHello(to: "Mirella")

// -----------------------
// Ommitting parameter labels
// Use underscore in declaration to avoid having to use param lable in call
// -----------------------

func greet(_ person:String){
    print("hello, \(person)!")
}

greet("Mirella")


// -----------------------
// Default parameters
// the print function has a default terminator param value for end of line
// We can declare default values to params
// -----------------------

func greetNicely(_ person: String, nicely: Bool = true){
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greetNicely("Mirella")
greetNicely("Mirella", nicely: false)

// -----------------------
// Variadic functions
// These accept any number of parameters of the same type
// The print function is vaiadic
// print("haters", "gona", "hate")
// Use ... when declaring a variadic function
// Swift converts the values that were passed into  an array of integers
// -----------------------

func findSquareRoot(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

findSquareRoot(numbers: 1, 2, 3, 4, 5)

// -----------------------
// Do, Try, Catch, Throw
// Use the throw keyword to throw an error from a function
// the throw value must come from an enumb that uses Swift Error type
// -----------------------

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}

// Wrap the function call in a do, try, catch block

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// -----------------------
// inout
// Swift provides a way for a function to change the value
// of an external variable used as parameter
// var name passed as param must be preceeded by &
// -----------------------

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
print ("before \(myNum)")
doubleInPlace(number: &myNum)
print ("after inout \(myNum)")



/*
 
 RECAP:
 
 1. Function parameter type must be declared in function declaration
 2. Function return types declared using arrow notation
 3. Function calls can omit param label if underscore is used in decalaration
 4. Funtion params can be declared with default values
 5. Variadic functions can accept zero or more of a specific param if declared with ...
 6. Functions can throw errors, but need to be wrapped in  do, try, catch block
 7. inout keyword will allow a function to change the value of an external variable. Best practice is to return a new value.
 */
 
