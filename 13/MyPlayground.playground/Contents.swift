import UIKit

// Swift review, day one

// -------
// Variables and constants
// -------

/*
    Variables and constants are used to store data.
    Once assigned a value, constants cannot change
    but variables can.
 */

var myVariable = "first value"
    myVariable = "changed value"

let myConstant = "I'm stuck like this forever"

// in life, I want to be a variable



// -------
// Data types - primitive data types?
// Reviewed String, Int, Float, Doubles, Bool
// Declare type after the colon, type names are capitalized
// Inference is preferred over type annotation
// -------

// String
var name: String = "Jean Valjean"
// Int - round numbers, positive and negative
var myNumber: Int = 26401
/*
 Due to accuracy, Swift recommends the use of Double over Float
 */
var longitudeDouble: Double = 1234586.7833333
var longitudeFloat: Float = -1234586.7833333

// Bool true/false - lower case
var isUnderstood: Bool = true

// -------
// Operators review
// Assignment, Calculation, Concatenation, Comparison
// -------
// I do miss ++, but in swift it is +=
// Comparison is ==, >=, <=
// Negation is !varName, or !=

// -------
// String interpolation
// Same as JavaScript, templating
// -------
var prisoner = "\(name) is prisoner \(myNumber)"

// -------
// Arrays - collection type
// can declare any type collection var myArray: [Any]
// ordered, indexed collection
// -------

var evenNumbers = [1, 1, 2, 3, 5, 8]
var songsArray = ["The lightning strike", "Run", "The Golden Floor"]
songsArray[evenNumbers[1]]

// How to determine type!!!!
type(of: evenNumbers)

var myAnyArray: [Any] = evenNumbers + songsArray

// Ways to declare enpty arrays
var myNewArray1: [String] = []
var myNewArray2 = [String]()

myNewArray1 += myNewArray2

// -------
// Dictionaries - collection type
// key/value pair collections
// can use white space to make it easier to read
// -------

var dog = [
            "name": "Jules",
            "breed": "Great Dane",
            "color": "Blue",
            "age": "7 years"
        ]
dog["name"]



// -------
// Conditional statements: if and else statements
// multiple conditions can be evaluated using logical and
// -------

if dog["name"] == "Jules"  && dog["breed"] == "Great Dane"{
    print("That is my girl!")
} else {
    print("My dog's name is Jules and she is a Great Dane")
}



// -------
// Loops
// closed range operator is ...
// half open range operator is ..< USEFUL for ARRAYS!
// _ replaces counter
// keyword break stops breaks out of a loop
// keyword continue skips current iteration and continues loop
// -------

for i in 1...10 {
    print("i * 10 is \(i * 10)")
}

for _ in 1...10 {
    print("hi")
}

for i in 0 ..< songsArray.count {
    print("I love \(songsArray[i])")
}

// looping over arrays is even easier
for song in songsArray {
    print("Snow Patrol, please sing \(song)")
}

// while loop

var counter = 0
while true {
    print("counter: \(counter)")
    counter += 1
    
    if counter == 20 {
        break
    }
    
}

// -------
// Switch case
// case can contain range
// must have a default
// fallthrough keyword allows one case fall into the next
// Need empty line after each case body
// -------

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You are just starting out")
    
case 2...3:
    print("You're a rising sart!")
    
case 4...5:
    print("Does this mean you are famous?")
    
default:
    print("Have you done something new?")
}



