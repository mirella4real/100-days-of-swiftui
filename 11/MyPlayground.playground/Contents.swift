import UIKit

// PROTOCOLS and EXTENSIONS

// ----------------
// Protocols describe required props and/or methods
// use keyword protocol to define
// Protocols are very similar to interfaces
// ----------------

// this creates a protocol Identifiable requiring getter and setter for property ID
// basically an interface that can be implemented
// a type
protocol Identifiable {
    var id: String {get set}
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable){
    print("My ID is \(thing.id)")
}



// ----------------
// Protocol Inheritance - you can inherit from several protocols at once
// Can create a single protocol that inherits from several protocols, so only a single protocol needs to be implemented
// ----------------

// define several protocols

protocol Payable {
    func calculateWager() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

// create a single protocol that combines them

protocol Employee: Payable, NeedsTraining, HasVacation {}



// ----------------
// Extensions - allow you to add methods to existing types
// ----------------

// add an extension to Int so now it has a method squared()

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

// cannot add stored properties, only computed one

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}


// ----------------
// Protocols extension allow you to extend a protocol
// ----------------

// Swift's array sand sets both conform to a protocol called Collection

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self  {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()


// ----------------
// Protocol Oriented Programming
// crafting your code around protocols and protocol extensions
// ----------------

// protocol Identifyable requires any conforming type to have an id property and identify() method

protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

// a protocol extension allows us to write a default function

extension Identifiable2 {
    func identify() {
        print("My ID is \(id)")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let mirella = User2(id: "mirella4real")
mirella.identify()

