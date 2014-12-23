// Swift for The Really Impatient notes
// Chapter 1
// Intro to Swift

import UIKit

//Hello world program in 1 line:
println("Hello, world!")

/* MARK: Summary:
    - var for variables
    - let for constants
    - STRONG typing
    - Basic data types implemented as struct's
        - Passed by value
    - Classes are passed by reference
    - No implicit type conversions
*/

//MARK: - 1.1 Basic Syntax

// MARK: Variables and Constants
//Declare Int without initial value
var explicitInt : Int
explicitInt = 100


var inferredInt = 100
var inferredDouble = 100.00

var iFloat : Float = 1.0
// This code would crash because you can't add Float and Double
// var test = inferredDouble + iFloat

//Type inference from function
func getInt() -> Int {
    return 5
}
var funcInt = getInt()


// MARK: String Interpolation

var fileCount = 99
println("There are \(fileCount) files")

var firstName = "Nick"
var lastName = "Madole"
var userName = "\(firstName)\(lastName)\(arc4random() % 500)"
//Possible userName:NickMadole165

// MARK: Control Flow - Conditionals
/* Difference between ObjC and Swift IF statements 
    1) Don't need to surround test expressions in parenthesis
    2) Braces ALWAYS required around conditional code
    3) Test expression must EXPLICITLY result in True or False
*/

let daysUntilEvent = 9
if daysUntilEvent > 0 {
    println("There is still time to buy a gift")
}
else if daysUntilEvent < 0 {
    println("Too late :(")
}
else {
    println("Better pick up a gift on the way")
}

/* Switch statements
    - Swift Switch statements don't require break statements.
    - They do require every possible option to be covered.
*/

var numberOfItems = 1
switch numberOfItems {
case 0:
    println("Cart is empty")
case 1:
    println("Cart has 1 item")
default:
    println("Cart has \(numberOfItems) items in cart")
}

//MARK: Control Flow - Loops
// Basic For-Loop
for var i = 0; i < 10; ++i {
    println("i = \(i)")
}

// For-In Loop
// IMPORTANT: ..< means half-open range
for i in 0 ..< 10 {
    println("i = \(i)")
}

/* IMPORTANT: 
    - break exits out of for-loop and cancels further iteration
    - continue ends current iteration and immediately starts the next one
    - You can label loops, allowing you to specify which loop to break or continue in a nested loop
*/

//Example of nested, labeled loop. Obscure example that serves no purpose, but it at least shows proper syntax
outer: for i in 1 ... 10 {
    inner: for j in 1 ... 2 {
        if i < 9 {
            break inner
        }
        else {
            println(i)
        }
    }
}

// MARK: - 1.2 Basic Data Types

