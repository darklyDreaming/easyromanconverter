//
//  Presenter.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 03.02.2021.
//

import Foundation

class Presenter {
    
    weak var viewController: MainScreenViewController?
    
    private var model = Model()
    
    // TODO: Fix the checker
    func checkInput<T>(input: T) {
        
        if let integerInput = input as? Int {
            
            // Pass it to the model
            let result = model.intToRoman(integerInput)
            conversionPerformed(result: result)
            return
            
        }
        
        if let stringInput = input as? String {
            // Pass it to the model
            let result = model.romanToInt(stringInput)
            conversionPerformed(result: result)
            return
            
        }
        
        let result = "Error"
        viewController?.showContent(content: result)
        print("Couldn't check the input")
        return
    }
}

extension Presenter: ModelDelegate {
    func conversionPerformed<T>(result: T) {
        
        viewController?.showContent(content: result)
        
    }
    
}
