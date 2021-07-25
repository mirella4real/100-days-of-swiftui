import UIKit

// Swift review, Day 2

// -------------
// Functions
// declared using func keyword
// parameters need a type
// parameters can have internal and external name
// -------------

// _ in declaration tells swift not to expect external parameter name

func favoriteSong(_ name: String) {
    print("My favorite song is \(name)")
}

print(favoriteSong("Can I Be Him"))

// "in", "for" and "with" are usually used as ext param name

func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}

countLetters(in: "Mirella")

// -> is used to declare return value
func isSongBySnowPatrol(name: String) -> Bool {
    if name == "Run" { return true }
    if name == "Chasing Cars" { return true }
    if name == "The Lightning Strike" { return true }
    
    return false
}

if isSongBySnowPatrol(name: "Run") {
    print("Yes!")
} else {
    print("Nope")
}
 


// -------------
// Optionals
// optionals help us handle missing values that would make our code crash
// declaring a variable optional means that it can contain nil as value
// -------------

// when declaring a function with returns an optional,
// var accepting that value must be optional as well


func getHaterStatus(weather: String) -> String? {
    if weather == "sunny"{
        return nil
    } else {
        return "Hate"
    }
}

var haterstatus: String?
    haterstatus = getHaterStatus(weather: "sunny")

// Optional unwrapping
// use an if let statement to safely unwrap an optional and take action accordingly

func takeHaterAction(status: String){
    if status == "Hate"{
        print("Hating")
    }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
} else {
    // else is optional, will be called if nill
}

// Sometimes you need to force unwrap an optional because you already know the value
// this assigns optionalHaterStatus an optional type
// becaues delcaration and assignment happen at the same time
// so Swift figured out the type
var optionalHaterStatus = getHaterStatus(weather: "rainy")

if optionalHaterStatus == nil {
    print("There was an error and we caught it without crash")
} else {
    // resolves in: They are Optional("Hate")
    //print("They are \(optionalHaterStatus)")
    
    //Because we already checked for nil, use ! to force unwrap the optional
    //resolves in: They are Hate
    print("They are \(optionalHaterStatus!)")
}


// -------------
// Optional chaining
// Lets you write code ONLY if your optional has a value
// the Optional coalescing operator (similar to ternary) allows you to specify default value if nill
// -------------

// Optional chaining example
// chained method uppercased() won't run if value is nill
func albumReleased(year: Int) -> String? {
    switch year {
    case 2003:
        return "Final Straw"
    case 2006:
        return "Eyes Open"
    case 2008:
        return "A Hundred Million Suns"
    case 2011:
        return "Fallen Empires"
    case 2018:
        return "Wildness"
    case 2019:
        return "Reworked"
    default:
        return nil
    }
}


// THIS is the way to handle optionals!!! with the optional coalescing operator
let album = albumReleased(year: 2008)?.uppercased() ?? "unknown"
print("The album is \(album)")


// -------------
// Enumerators
// allow you to define new data types in swift, then define possible values it can hold
// behind the scenes, enums are just numbers
// -------------

// enums can have values attached, like .wind
enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

// use the keyword let to access the value inside a case
func getHatersEnumStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHatersEnumStatus(weather: WeatherType.wind(speed: 5))

// because swift knows that WeatherType is the type, can call .sun
print(getHatersEnumStatus(weather: .sun) ?? "unknown")



// -------------
// Structs
// Complex data types
// Swift  creates memberwise initializer - just pass values at creation
// dot notation to read properties
// does not use reference for data. copy saves data to new place in mem
// -------------


struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("This person is wearing \(clothes) and \(shoes)")
    }
}

var swiftStudent = Person(clothes: "jeans", shoes: "flip flops")
swiftStudent.describe()


// -------------
// Classes
// Complex data type
// requires initializer (constructor)
// instances are objects, copies of ojbects point to the same data
// class inheritance is possible, class extends another class
// classes can override parent class methods
// super keyword calls methods in parent class
// @objc keyword
// -------------


class Singer {
    var name: String
    var age: Int
    var style: String
    
    init(name: String, age: Int, style: String) {
        self.name = name
        self.age = age
        self.style = style
    }
    
    func sing() {
        print("Say yes!")
    }
}

class AmericanaSinger: Singer {
    var band: String
    
    init(name: String, age: Int, style: String, band: String){
        self.band = band
        super.init(name: name, age: age, style: style)
    }
    
    override func sing() {
        print("I get on the road and ride to you")
    }
}



var gary = Singer(name: "Gary", age: 45, style: "Alternative")
gary.name
gary.age
gary.sing()

gary = AmericanaSinger(name: "Gary", age: 45, style: "Americana", band: "Tired Pony")
gary.sing()
