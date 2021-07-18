import UIKit

// CLASSES

// ------------
// Must always create your constructor method
// ------------

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }
    
    func makeNoise(){
        print("Woof!")
    }
}

let puppy = Dog(name: "Poppy", breed: "Poodle")


// ------------
// Class inheritance
// And overriding methods
// ------------

class Poodle: Dog {
    init(name: String){
        super.init(name: name, breed: "Poodle")
    }
    override func makeNoise() {
        print("Yip!")
    }
}

let poodlePuppy = Poodle(name: "Poodle Puppy")
poodlePuppy.makeNoise()

// ------------
// Final keyword prevents classes from adding methods after inheriting
// ------------

final class FinalDog {
    var name: String
    var breed: String
    
    init(name: String, breed: String){
        self.breed = breed
        self.name = name
    }
}

// ------------
//  Structs point to different places in memory. changing copies won't change the original
//  Classes refer to the same place. Changing copies will change the original
// ------------

class Band {
    var name = "Snow Patrol"
}

var band = Band()
print(band.name)

var bandCopy = band
bandCopy.name = "Reindeer Section"
print(band.name)



// ------------
// Deinitializer
// A class can have code that runs when an instance of the class is destroyed
// ------------

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm  \(name)")
    }
    
    deinit {
        print("\(name) is not more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


// ------------
// Mutability
// classes don't need the mutable keyword, like structs do
// ------------

