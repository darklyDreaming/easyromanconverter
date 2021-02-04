//
//  Model.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 02.02.2021.
//

import Foundation

protocol ModelDelegate {
    
    func conversionPerformed<T>(result: T)
    
}
class Model {
    
    func romanToInt(_ s: String) -> Int {
       var stringInput = s
       let lettersValues: [String : Int] = ["CM" : 900, "M" : 1000, "CD" : 400, "D" : 500, "XC" : 90, "C" : 100, "XL" : 40, "L" : 50, "IX" : 9, "X" : 10, "IV" : 4, "V" : 5, "II" : 2, "I" : 1 ]
       
       if stringInput.count == 1 {
           return lettersValues[stringInput] ?? 0
       }
       
       var resultingNumber = 0
       
       while stringInput.count != 0 {
           
           if stringInput.count == 1 {
               resultingNumber += lettersValues[stringInput] ?? 0
               return resultingNumber
           }
           
           let firstLetter = String(stringInput.removeFirst())
           let secondLetter = String(stringInput.removeFirst())
           
           if let numberIsFound = lettersValues[firstLetter + secondLetter] {
               resultingNumber += numberIsFound
           } else {
               stringInput = secondLetter + stringInput
               resultingNumber += lettersValues[firstLetter] ?? 0
           }
       }
       return resultingNumber
   }
   
   
   func intToRoman(_ num: Int) -> String {
       
       
       let lettersForIntegers: [Int : String] = [1000 : "M", 900 : "CM", 500 : "D", 400 : "CD", 100 : "C", 90 : "XC", 50 : "L", 40 : "XL", 10 : "X", 9 : "IX", 5 : "V",  4 : "IV",  3 : "III", 2 : "II", 1 : "I"]
       
       let integersArray: [Int] = [ 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 3, 2, 1]
       
       var result = ""
       var numericalInput = num
       
       for number in integersArray {
           
           if numericalInput == 0 {
               return result
           }

           if numericalInput >= number {
               while numericalInput >= number {
                   numericalInput -= number
                   result += lettersForIntegers[number] ?? ""
               }
           }
       }
       return result
   }
    
    
    
    
}
