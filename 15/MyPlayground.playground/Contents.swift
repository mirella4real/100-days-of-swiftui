import UIKit

// Swift Review Day 3

// ---------------------
// Properties
// Property observers - 2 kinds: willSet and didSet
//   willSet block has property newValue
//   didSet block has proeprty oldValue
// Computed properties - the value is calculated as needed
//   more common in Apple code than in user code
// ---------------------


struct Person {
    
    // property observers
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        didSet {
            updateUI(msg: "I changed from \(oldValue) to \(clothes)")
        }
    }
    var shoes: String
   
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
    
    func updateUI(msg: String){
        print(msg)
    }
}

var fashionista = Person(clothes: "shorts", shoes: "sandals")
fashionista.clothes = "midi skirt"


struct PersonWithAge {
    var age: Int
    
    // computed protpery
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var birthdayboy = PersonWithAge(age: 23)
print(birthdayboy.ageInDogYears)

// ---------------------
// Static properties and methods
//   shared properties
//   use static keyword
// ---------------------

struct SnowPatrol {
    static var leadSinger = "Gary Lightbody"
}

print(SnowPatrol.leadSinger)


// ---------------------
// Access control modifiers
//    public - everyone can read and write
//    internal - only your swift code can read write
//    fileprivate - only swift code in the same file can read/write
//    private - only available to inside methods that belong to the type
// ---------------------

class snowPatrolFan {
    private var name: String?
}



// ---------------------
// Polymorphism and typecasting
/*   When a class inherits from another,
     it can be treated as its own or its super type.
     This is polymorphism
*/
// ---------------------

class Vehicle {
    var type: String
    var mode: String
    
    init(type: String, mode: String){
        self.type = type
        self.mode = mode
    }
    
    func getStorage() -> String {
        return "Vehicles are kept in appropriate storage"
    }
}

class Car: Vehicle {
    var wheels: Int
    
    init(type: String, mode: String, wheels: Int){
        self.wheels = wheels
        super.init(type: type, mode: mode)
    }
    
    override func getStorage() -> String {
        return "\(type) is stored in a garage"
    }
}

class Plane: Vehicle {
    var engines: Int
    
    init(type: String, mode: String, engines: Int){
        self.engines = engines
        super.init(type: type, mode: mode)
    }
    
    override func getStorage() -> String {
        return "\(type) is stored in a hangar"
    }
}

var suv = Car(type: "SUV", mode: "Land", wheels: 4)
var jet = Plane(type: "Jet", mode: "Air", engines: 2)
var airbus = Plane(type: "Air Bus", mode: "Air", engines: 4)

// polymorphism here
var allVehicles: [Vehicle] = [suv, jet, airbus]

for vehicle in allVehicles {
    print(vehicle.getStorage())
    
    // tyypecasting here
    if let car = vehicle as? Car {
        print(car.wheels)
    } else if let airplane = vehicle as? Plane {
        print(airplane.engines)
    }
}

// ---------------------
// Closures
// equivalent to anonymous or callback functions
// if closure is the las parameter, can use trailing closure syntax
// ---------------------



