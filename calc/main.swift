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
var charc9 : Character
var charc10 : Character
var charc11 : Character
var charc12 : Character
var firstString: String
var secondString : String
var thirdString : String
var fourthString : String
var fifthString : String
var sixthString : String
var seventhString : String
var CheckLastInt : Bool
var StartSecondInt : Bool
var StartThirdInt : Bool
var StartFourthInt : Bool
var startWithMinus : Bool
var char4checking : String
var char5checking : String
var stringSavedOne : String
var stringSavedTwo : String
var stringSavedThree : String
var stringSavedFour : String
var stringSaved5 : String
var stringSaved6 : String
var stringSaved7 : String
var stringSaved8 : String
var percentage : Double
result = 0.0
calculation = "0"
numOne = 0
numTwo = 0
numThree = 0
CheckLastInt = true
StartSecondInt = false
StartThirdInt = false
StartFourthInt = false
startWithMinus = false
stringSavedOne = ""
stringSavedTwo = ""
stringSavedThree = ""
stringSavedFour = ""
stringSaved5 = ""
stringSaved6 = ""
stringSaved7 = ""
stringSaved8 = ""


var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program
/// testing system
//let string = readLine()!
/// end of testing
let string = String(describing: args)
//print("THIS IS IT \(string)")
var formattedString = string.replacingOccurrences(of: " ", with: "")
formattedString = formattedString.replacingOccurrences(of: "[", with: "")
formattedString = formattedString.replacingOccurrences(of: "]", with: "")
formattedString = formattedString.replacingOccurrences(of: ",", with: "")
formattedString = formattedString.replacingOccurrences(of: "\'", with: "")
formattedString = formattedString.replacingOccurrences(of: "\"", with: "")

//print(formattedString)
postfix operator %

postfix func % (percentage: Int) -> Double {
    return (Double(percentage) / 100)
}
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
    startWithMinus = true
    
}
/// end of checking charc

// storing Second variable from array
if (formattedString.count > 1) {
    charc2 = characters[1]
    // changing charc into string to check if it is a string or an integer
    secondString = String(charc2)
    if let _ = Int(secondString) {
        firstString = (firstString + secondString)
        numOne = Double(firstString)!
        CheckLastInt = true
    } else {
        //  print("calculation method \(charc2)")
        calculation = String(charc2)
        CheckLastInt = false
        
        
    }}
/// end of checking charc


// storing Third variable from array
//charc3 = characters[2]
// changing charc into string to check if it is a string or an integer
if (formattedString.count > 2) {
    charc3 = characters[2]
    
    thirdString = String(charc3)
    
    if let _ = Int(thirdString) {
        if (CheckLastInt == false) {
            StartSecondInt = true
        }
        if (CheckLastInt == true) {
            thirdString =  firstString + thirdString
            numOne = Double(thirdString)!
        } else {
            numTwo = Double(String(charc3))!
            CheckLastInt = true
        }
        
    }
    CheckLastInt = false
    calculation = String(charc3)
    
}
/// end of checking charc
/// variable 4

if (formattedString.count > 3) {
    charc2 = characters[1]
    charc4 = characters[3]
    charc3 = characters[2]
    if let _ = Int(String(charc4)) {
        if (StartSecondInt == true && StartThirdInt == true) {
            StartFourthInt = true
        }  else if (StartSecondInt == true) {
            StartThirdInt = true
        }
        if (StartSecondInt != true) {
            StartSecondInt = true
        }
        if (StartSecondInt != true) {
            
            let thirdString = String(charc4)
            numTwo = Double(thirdString)!
        }
        else if (StartSecondInt == true && StartThirdInt != true) {
            
            if let _ = Int(String(charc3)) {
                let thirdString = String(Int(numTwo)) + String(charc4)
                numTwo = Double(thirdString)!
            }
                
                
                
            else if (StartSecondInt != true) {
                //    if let _ = Int(String(charc3)) {
                let thirdString = String(Int(numOne)) + String(charc4)
                numOne = Double(thirdString)!
                //   }
                
            } else
            {
                
                let thirdString = String(charc4)
                numTwo = Double(thirdString)!
            }}
        else if (StartSecondInt == true && StartThirdInt == true) {
            if let _ = Int(String(charc4)) {
                //    if let _ = Int(String(charc4)) {
                let thirdString = String(Int(numThree)) + String(charc4)
                numThree = Double(thirdString)!
                
                //  }
            }     }
    } else {
        if let _ = Int(String(charc3)) {
            if (StartSecondInt == true && StartThirdInt == true) {
                StartFourthInt = true
            }  else if (StartSecondInt == true) {
                StartThirdInt = true
            }
            if (StartSecondInt != true) {
                StartSecondInt = true
            } }
        CheckLastInt = false
        char4checking = String(charc4)
        calculation = String(charc4)
        
        
    }}
/// end of checking charc

/// variable 5
if (formattedString.count > 4) {
    charc5 = characters[4]
    charc4 = characters[3]
    charc3 = characters[2]
    if let _ = Int(String(charc5)) {
        
        if (StartSecondInt == true && StartThirdInt == true) {
            StartFourthInt = true
        }  else if (StartSecondInt == true) {
            StartThirdInt = true
        }
        if (StartSecondInt != true) {
            StartSecondInt = true
        }
        
        if (StartSecondInt != true) {
            
            
            let thirdString = String(Int(numTwo)) + String(charc5)
            numOne = Double(thirdString)!
        } else {
            
        }
        if (StartThirdInt != true) {
            
            if let _ = Int(String(charc4)) {
                
                let thirdString = String(Int(numTwo)) + String(charc5)
                numTwo = Double(thirdString)!
                
                
            } else {
                
                let thirdString = String(charc5)
                numTwo = Double(thirdString)!
            }}
        else if (StartSecondInt == true && StartThirdInt == true) {
            if let _ = Int(String(charc5)) {
                //    if let _ = Int(String(charc4)) {
                let thirdString = String(Int(numThree)) + String(charc5)
                numThree = Double(thirdString)!
                
                //  }
            }     }
    } else {
        if (StartSecondInt == true && StartThirdInt == true) {
            StartFourthInt = true
        }  else if (StartSecondInt == true) {
            StartThirdInt = true
        }
        if (StartSecondInt != true) {
            StartSecondInt = true
        }
        CheckLastInt = false
        char5checking = String(charc5)
        calculation = String(charc5)
        
    }}
/// end of checking charc

/// variable 6
if (formattedString.count > 5) {
    charc5 = characters[4]
    charc4 = characters[3]
    charc6 = characters[5]
    if let _ = Int(String(charc6)) {
        if (StartSecondInt != true) {
            
            
            let thirdString = String(charc6)
            numTwo = Double(thirdString)!
        } else if (StartThirdInt != true) {
            
            if let _ = Int(String(charc5)) {
                
                let thirdString = String(Int(numTwo)) + String(charc6)
                numTwo = Double(thirdString)!
                
                
            } else {
                
                let thirdString = String(charc6)
                numTwo = Double(thirdString)!
            }}
        else if (StartSecondInt == true && StartThirdInt == true) {
            if let _ = Int(String(charc6)) {
                let thirdString = String(Int(numThree)) + String(charc6)
                numThree = Double(thirdString)!
                
                //  }
            }     }
    } else {
        if (StartSecondInt == true && StartThirdInt == true) {
            StartFourthInt = true
        }  else if (StartSecondInt == true) {
            StartThirdInt = true
        }
        if (StartSecondInt != true) {
            StartSecondInt = true
        }
        CheckLastInt = false
        calculation = String(charc6)
        
        
    }}
/// end of checking charc

/// variable 7
if (formattedString.count > 6) {
    charc7 = characters[6]
    charc6 = characters[5]
    charc5 = characters[4]
    charc4 = characters[3]
    
    if let _ = Int(String(charc7)) {
        if let _ = Int(String(charc6)) {
            let thirdString = (String(charc6) + String(charc7))
            numTwo = Double(thirdString)!
            
            
        } else {
            if (StartSecondInt == true ) {
                let thirdString = String(charc7)
                numThree = Double(thirdString)!
                StartThirdInt = true
            } else {
                let thirdString = String(charc7)
                numTwo = Double(thirdString)!
            }
        }
        
    } else {
        if (StartSecondInt == true && StartThirdInt == true) {
            StartFourthInt = true
        }  else if (StartSecondInt == true) {
            StartThirdInt = true
        }
        if (StartSecondInt != true) {
            StartSecondInt = true
        }
        CheckLastInt = false
        calculation = String(charc7)
        
    } }

/// variable 8
if (formattedString.count > 7) {
    charc8 = characters[7]
    charc7 = characters[6]
    charc6 = characters[5]
    charc5 = characters[4]
    charc4 = characters[3]
    
    if (StartSecondInt == true && StartThirdInt != true) {
        
        if let _ = Int(String(charc8)) {
            if let _ = Int(String(charc7)) {
                let thirdString = String(numTwo) + String(charc8)
                numTwo = Double(thirdString)!
                
                
            } }}
    else if (StartSecondInt == true && StartThirdInt == true) {
        if let _ = Int(String(charc8)) {
            if let _ = Int(String(charc7)) {
                let thirdString = String(Int(numThree)) + String(charc8)
                numThree = Double(thirdString)!
                
            }
        }
    }  else {
        if (StartSecondInt == true && StartThirdInt == true) {
            StartFourthInt = true
        }  else if (StartSecondInt == true) {
            StartThirdInt = true
        }
        if (StartSecondInt != true) {
            StartSecondInt = true
        }
        CheckLastInt = false
        calculation = String(charc8)
        
    }}

/// variable 9
if (formattedString.count > 8) {
    charc9 = characters[8]
    charc8 = characters[7]
    charc7 = characters[6]
    charc6 = characters[5]
    charc5 = characters[4]
    charc4 = characters[3]
    
    if (StartSecondInt == true && StartThirdInt != true) {
        
        if let _ = Int(String(charc9)) {
            if let _ = Int(String(charc8)) {
                let thirdString = String(Int(numTwo)) + String(charc8)
                numTwo = Double(thirdString)!
                
                
            } }}
    else if (StartSecondInt == true && StartThirdInt == true) {
        if let _ = Int(String(charc9)) {
            if let _ = Int(String(charc8)) {
                let thirdString = String(Int(numThree)) + String(charc9)
                numThree = Double(thirdString)!
                
            }
        }
    }  else {
        if (StartSecondInt == true && StartThirdInt == true) {
            StartFourthInt = true
        }  else if (StartSecondInt == true) {
            StartThirdInt = true
        }
        if (StartSecondInt != true) {
            StartSecondInt = true
        }
        CheckLastInt = false
        calculation = String(charc8)
        
    }}

/// variable 10
if (formattedString.count > 9) {
    charc10 = characters[9]
    charc9 = characters[8]
    charc8 = characters[7]
    charc7 = characters[6]
    charc6 = characters[5]
    charc5 = characters[4]
    charc4 = characters[3]
    
    if (StartSecondInt == true && StartThirdInt != true) {
        
        if let _ = Int(String(charc8)) {
            if let _ = Int(String(charc7)) {
                let thirdString = String(numTwo) + String(charc8)
                numTwo = Double(thirdString)!
                
                
            } }}
    else if (StartSecondInt == true && StartThirdInt == true) {
        if let _ = Int(String(charc8)) {
            if let _ = Int(String(charc7)) {
                let thirdString = String(Int(numThree)) + String(charc8)
                numThree = Double(thirdString)!
                
            }
        }
    }  else {
        if (StartSecondInt == true && StartThirdInt == true) {
            StartFourthInt = true
        }  else if (StartSecondInt == true) {
            StartThirdInt = true
        }
        if (StartSecondInt != true) {
            StartSecondInt = true
        }
        CheckLastInt = false
        calculation = String(charc8)
        
    }}


/// variable 11
if (formattedString.count > 10) {
    charc11 = characters[10]
    charc10 = characters[9]
    charc9 = characters[8]
    charc8 = characters[7]
    charc7 = characters[6]
    charc6 = characters[5]
    charc5 = characters[4]
    charc4 = characters[3]
    
    if let _ = Int(String(charc11)) {
        if let _ = Int(String(charc10)) {
            let thirdString = (String(charc10) + String(charc11))
            numTwo = Double(thirdString)!
            
            
        } else {
            if (StartSecondInt == true ) {
                let thirdString = String(charc11)
                numThree = Double(thirdString)!
                StartThirdInt = true
            } else {
                let thirdString = String(charc11)
                numTwo = Double(thirdString)!
            }
        }
        
    } else {
        if (StartSecondInt == true && StartThirdInt == true) {
            StartFourthInt = true
        }  else if (StartSecondInt == true) {
            StartThirdInt = true
        }
        if (StartSecondInt != true) {
            StartSecondInt = true
        }
        CheckLastInt = false
        calculation = String(charc11)
        
    } }

/// variable 12
if (formattedString.count > 11) {
    charc12 = characters[11]
    charc11 = characters[10]
    charc10 = characters[9]
    charc9 = characters[8]
    charc8 = characters[7]
    charc7 = characters[6]
    charc6 = characters[5]
    charc5 = characters[4]
    charc4 = characters[3]
    
    if let _ = Int(String(charc12)) {
        if let _ = Int(String(charc11)) {
            let thirdString = (String(charc11) + String(charc12))
            numTwo = Double(thirdString)!
            
            
        } else {
            if (StartSecondInt == true ) {
                let thirdString = String(charc12)
                numThree = Double(thirdString)!
                StartThirdInt = true
            } else {
                let thirdString = String(charc12)
                numTwo = Double(thirdString)!
            }
        }
        
    } else {
        if (StartSecondInt == true && StartThirdInt == true) {
            StartFourthInt = true
        }  else if (StartSecondInt == true) {
            StartThirdInt = true
        }
        if (StartSecondInt != true) {
            StartSecondInt = true
        }
        CheckLastInt = false
        calculation = String(charc12)
        
    } }
/// end of checking charc
// 71 + 82 -67
// 55 - 24 - -12 - - 2
// 7 - 3 + 7 / 3 x 5 % 3
switch (calculation)
{
case "+":
    formattedString = formattedString.replacingOccurrences(of: "x", with: "*")
    if (StartSecondInt == false) {
        formattedString = formattedString.replacingOccurrences(of: "+", with: "")
        print(formattedString)
    }
    //  print("formatted String is!")
    let expn = NSExpression(format:formattedString)
    result = expn.expressionValue(with: nil, context: nil)! as! Double
    break
    
case "%":
    
    formattedString = formattedString.replacingOccurrences(of: "x", with: "*")
    
    
    let string2 = String(Int(numOne))
    let string3 = String(Int(numTwo))
    print("numOne\(numOne)")
    print("numTwo\(numTwo)")
    if (StartSecondInt == true)
    {
        formattedString = formattedString.replacingOccurrences(of:string2, with: "\(numOne.truncatingRemainder(dividingBy: numTwo))")
        
        //       print("string3\(string3)")
        formattedString = formattedString.replacingOccurrences(of:string3, with: "")
        
    }
    else if (StartSecondInt != true) {
        formattedString = formattedString.replacingOccurrences(of:string2, with: "\(numOne.truncatingRemainder(dividingBy: 1))")
        
    }
    //    formattedString = formattedString.replacingOccurrences(of:string3, with: "\(numTwo.truncatingRemainder)")
    formattedString = formattedString.replacingOccurrences(of:"%", with: "")
    formattedString = formattedString.replacingOccurrences(of:"+", with: "")
    
    //  print("start third int\(StartThirdInt)")
    
    //          print(formattedString)
    
    let expn = NSExpression(format:formattedString)
    result = expn.expressionValue(with: nil, context: nil)! as! Double
    
    break
    
case "-":
    //  print("formatted String is!")
    formattedString = formattedString.replacingOccurrences(of: "x", with: "*")
    let expn = NSExpression(format:formattedString)
    result = expn.expressionValue(with: nil, context: nil)! as! Double
    break
    
case "--":
    //   print("formatted String is!")
    let expn = NSExpression(format:formattedString)
    result = expn.expressionValue(with: nil, context: nil)! as! Double
    break
    
    
case "/":
    formattedString = formattedString.replacingOccurrences(of: "x", with: "*")
    //    print("formatted String is!")
    let expn = NSExpression(format:formattedString)
    result = expn.expressionValue(with: nil, context: nil)! as! Double
    break
    
case "x":
    //   print("formatted String is!")
    formattedString = formattedString.replacingOccurrences(of: "x", with: "*")
    let expn = NSExpression(format:formattedString)
    result = expn.expressionValue(with: nil, context: nil)! as! Double
    break
    
default:
    if (StartSecondInt == false) {
        formattedString = formattedString.replacingOccurrences(of: "+", with: "")
    }
    formattedString = formattedString.replacingOccurrences(of: "x", with: "*")
    let expn = NSExpression(format:formattedString)
    result = expn.expressionValue(with: nil, context: nil)! as! Double
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


print(Int(result))



//print(Int(args[0])!)


