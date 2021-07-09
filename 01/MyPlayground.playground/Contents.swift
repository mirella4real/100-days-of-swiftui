import UIKit

// declaring a variable
var greeting = "Hello, playground"

// assigning a new value to a previously declared variable
greeting = "goodbye"

// declaring a multiline var value
var myStr = """
    this could
    very well
    be something new
    """

// multiline var value without \n included in output
myStr = """
    this could \
    very well \
    be something new
    """

// string interpolation, just like JavaScript templating
var testingStringInterpolation = "This is a test and \(myStr)"
