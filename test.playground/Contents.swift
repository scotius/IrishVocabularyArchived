//: Playground - noun: a place where people can play

import UIKit



import Foundation


var textArray : [String] = []
var outputArray : [String] = []
var inputText : String = ""
var textLine : NSString = ""
var line = "       /Users/scott/Dropbox/Release/Teanglann/Abair"
var integerValue = 0
var integerArray : [Int] = []
var outputText : NSString = ""

var firstValue = ""
var secondValue = ""
var thirdValue = ""
var fourthValue = ""

inputText = line.trimmingCharacters(in: .whitespaces)

func readFile() {
    
    let inputPath = "/Users/scott/Dropbox/Release/Teanglann/Abair"
    
    
    do {
        inputText = try String(contentsOfFile: inputPath, encoding: .utf8)
        
        
        textArray = inputText.components(separatedBy: ",")
        //strip empty characters out of inputText
        outputArray = textArray.filter{ (x) -> Bool in
            !x.isEmpty
        }
        
        firstValue = outputArray[266]
        secondValue = outputArray[274]
        thirdValue = outputArray[276]
        fourthValue = outputArray[280]
        
        
        
        
    }
    catch _ {
        inputText = "File not opened"
    }

}



func writeFile() {
    
    
    
    
    
    
    let outputPath = "/Users/scott/Dropbox/Release/Teanglann/AbairParsedOutput.txt"
    outputText = textArray.joined(separator: "\n") as NSString
    
    do {
        try outputText.write(toFile: outputPath, atomically:true, encoding:String.Encoding.utf8.rawValue)
    }
    catch _ {
        outputText = "File cannot be written to"
    }
    
    
    
    
    
}


readFile()
writeFile()
print(outputArray)

