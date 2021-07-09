import UIKit

//ARRAYS
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]

//if using type annotation, arrays are written in brackets
let favoriteBeatle:[String] = [george]


//SETS
// unordered and unique values
let colors = Set(["red", "green", "blue", "red", "violet"])

//TUPLES
//hold a fixed set of things that can't be changed
var name = (first: "Mirella", last: "batista")
name.0
name.last = "Batista"
name.last

//Dictionaries
var favoriteIcecream = [
    "Mirella": "Peanutbutter Halo Top",
    "Kelly": "Mint Chocolate Chip Halo Top"
]
favoriteIcecream["Julio", default: "Vanilla"]

favoriteIcecream["Julio"] = "Candybar Crunch Halo Top"

favoriteIcecream

//Create empty collections (Arrays, sets and dictionaries are called collections
//Dictionary
var teams = [String: String]()
teams["Paul"] = "red"

//Array
var results = [Int]()

//Set
var words =  Set<String>()
var numbers = Set<Int>()

//can use same syntax for arrays and dictionaries
var scores = Dictionary<String, Int>()
var newResults = Array<Int>()

//ENUMS
enum Result {
    case success
    case failure
}

let result = Result.success

