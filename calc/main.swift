//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation
import Cocoa
import AppKit



extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}

var numOne : Double
var numOneInt : Int
var numTwo : Double
var numThree : Double
var operation : String
var calculation : String
var result : Double
var charc : Character
var charc2 : Character
var charc3 : Character
var charc4 : Character
var charc5 : Character
var charc6 : Character
var charc7 : Character
var charc8 : Character
var firstString: String
var secondString : String
var thirdString : String
var fourthString : String
var fifthString : String
var sixthString : String
var seventhString : String
result = 0.0
calculation = "0"
numOne = 0
numTwo = 0
numThree = 0

var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program

let string = readLine()!
let formattedString = string.replacingOccurrences(of: " ", with: "")
//print(formattedString)
let characters = Array(formattedString)
//print(characters)

// storing First variable from array
charc = characters[0]
//print("first char variable \(charc)")
// changing charc into string to check if it is a string or an integer
firstString = String(charc)
if let _ = Int(firstString) {
 //  print("first number is a int")
    numOne = Double(String(charc))!
  // print("Final First Variable \(numOne)")
} else {
    print("You should really start with a number")
}
/// end of checking charc

// storing Second variable from array
charc2 = characters[1]
// changing charc into string to check if it is a string or an integer
secondString = String(charc2)
if let _ = Int(secondString) {
     firstString = (firstString + secondString)
    numOne = Double(firstString)!

} else {
  //  print("calculation method \(charc2)")
   calculation = String(charc2)

}
/// end of checking charc


// storing Second variable from array
charc3 = characters[2]
// changing charc into string to check if it is a string or an integer
thirdString = String(charc3)
if let _ = Int(thirdString) {
    
    numTwo = Double(String(charc3))!
 
} else {
     calculation = String(charc3)
}
/// end of checking charc
/// variable 4
charc4 = characters[3]
if let _ = Int(String(charc4)) {
    
    numTwo = Double(String(charc4))!
    
} else {
    calculation = String(charc4)
}
/// end of checking charc

/// variable 5
charc5 = characters[4]
if let _ = Int(String(charc5)) {
  let thirdString = (String(charc4) + String(charc5))
    numTwo = Double(thirdString)!
    
} else {
    calculation = String(charc5)
}
/// end of checking charc

switch (calculation)
{
case "+":
    result = numOne + numTwo
    break
    
case "%":
    result = 10000
    break
    
case "-":
    result = numOne - numTwo
    break
    
case "/":
    result = numOne / numTwo
    break
    
case "*":
    result = numOne * numTwo
    break
    
default:
    print("Error, please try again")
    break
    
    
}

    



// one way to do this is to save the whole first message as a string, then once saved as a string break up into characters. :) Once into characters save a character to a different value. And then you have your values and calculate from left to right! IF the second value is a number, add it onto the first value. IF the second number is a string then computer with a switch statement.



/*switch (numOne)
{
case Int.min..<0:
    print("someVar is \(numOne)")
    
case 0:
    print("someVar is 0")
    
default:
    print("someVar is \(calculation)")
}
    */


print("The result is \(result)")



print(Int(args[0])!)

