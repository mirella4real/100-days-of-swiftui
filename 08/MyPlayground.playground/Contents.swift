import UIKit

// Structs

// -----------------
// Swift lets you design types in two ways, most
// common being structures (I assume the second way is classes)
// -----------------

struct Sport {
    var name: String
}

var skating = Sport(name: "Skating")
print(skating.name)

skating.name = "Roller Derby"
print(skating.name)



// -----------------
// Computed property
// This type of property runs code to figure out its value
// -----------------

struct OlympicSport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let rollerDerby = OlympicSport(name: "Roller Derby", isOlympicSport: false)
print(rollerDerby.olympicStatus)


// -----------------
// Property observers (event listeners)
// didSet and willSet are properties that listen for change events
// and trigger action accordingly
// -----------------

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 10
progress.amount = 20
progress.amount = 30
progress.amount = 50
progress.amount = 80
progress.amount = 100


// -----------------
// Methods
// functions inside struts, still use func keyword
// -----------------

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}
let austin = City(population: 1_000_000)
austin.collectTaxes()


// -----------------
// Mutating Methods
// if an instance of a struct is created with as a constant (let), its properties cannot be changed
// Because Swift does not know if a strut will be used with a constant or variable, methode that change properties MUST be declared with "mutating" keyword
// Swift will complain if you use let to declare a strut containing a mutating method
// -----------------

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Mirella")
print(person.name)
person.makeAnonymous()
print(person.name)

// -----------------
// Properties and methods of strings
// Strings are really struct, with their own properties and methods
// in JavaScript, Strings are Objects
// -----------------

let myString = "Do or do not, there is not try."
print(myString.count)
print(myString.hasPrefix("Do"))
print(myString.uppercased())
print(myString.sorted())


// -----------------
// Properties and methods of arrays
// Arrays are also structs, with their own properties and methods
// -----------------

var snowPatrolSongs = ["Run", "The Lightning Strike", "Set Fire to the Third Bar", "Just Say Yes", "Chasing Cars", "The Golden Floor", "Crack the Shutters", "Called Out in the Dark"]

print(snowPatrolSongs.count)
snowPatrolSongs.append("Don't Give In")
print(snowPatrolSongs.sorted())

