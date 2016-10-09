//
//  ViewController.swift
//  test
//
//  Created by Scott on 9/27/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit

import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      readFile()
        writeFile()
    }

  
    
    
    
   // import Foundation
    
    
    var textArray : [String] = []
    var outputArray : [String] = []
    var inputText : String = ""
    var textLine : NSString = ""
    var line = ""
    var integerValue = 0
    var integerArray : [Int] = []
    var outputText : NSString = ""
    
    var firstValue = ""
    var secondValue = ""
    var thirdValue = ""
    var fourthValue = ""
    
    func readFile() {
        
        let inputPath = "/Users/scott/Dropbox/Release/Teanglann/Abair"
      
        
        do {
            inputText = try String(contentsOfFile: inputPath, encoding: .utf8)
            
            
            textArray = inputText.components(separatedBy: ",")
            //strip empty characters out of inputText
            outputArray = textArray.filter{ (x) -> Bool in
                !x.isEmpty
            }
            
//            firstValue = outputArray[266]
//            secondValue = outputArray[274]
//            thirdValue = outputArray[276]
//            fourthValue = outputArray[280]
            
            
            
            
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
    
    
 
    

   


}

