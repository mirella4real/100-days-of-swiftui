import UIKit

// --------------------
// Intializers
// Basically constructor methods for structs
// When you initialize properties in init, can create struct without params declared at creation
// --------------------

struct User {
    var userName: String
    
    init() {
        userName = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.userName = "mirella4real"

// --------------------
// self - points to whatever instance of the struct is being referred
// --------------------

struct Person {
    var name: String
    
    init(name: String){
        print("\(name) was born!")
        self.name = name
    }
}


// --------------------
// Lazy properties
// As a performance optimization, use lazy keyword
// so that the property is only created when needed
// --------------------

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct PersonWithFamilyTree {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String){
        self.name = name
    }
}

var mirella = PersonWithFamilyTree(name: "Mirella")
mirella.familyTree


// --------------------
// Static properties
// the static keyword allows us to add properties to a struct where the value is shared by all instances of the struct
// --------------------

struct Student {
    var name: String
    static var classSize = 0
    
    init(name:String) {
        self.name = name
        Student.classSize += 1
    }
    
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)



// --------------------
// Access control
// make variables private with the private keyword
// --------------------

struct PrivetePerson {
   private var privateInformation: String
    
    init(privateInformation: String){
        self.privateInformation = privateInformation
    }
    
    func shareInfo() -> String {
        return "All I can say is that it is \(privateInformation)"
    }
}

let aPerson = PrivetePerson(privateInformation: "Secret")
print(aPerson.shareInfo())



/*
 
 RECAP
 
 1. structs allow you to create your own types and they have their own properties and methods
 2. you can use stored properties or computed properties to create values on the fly
 3. mutating keyword is used for changing properties inside a method
 4. init is a struct constructor method
 5. self is used to refer to the current instance of the struct
 6. lazy allows you to mark props that will be initialized only when needed
 7. static keywordk allows you to create properties at the struct level, shared by all instances
 8. private and public keywords are used for access control

 
 */

