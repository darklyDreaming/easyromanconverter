//
//  Presenter.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 03.02.2021.
//

import Foundation

class Presenter {
    
    lazy var viewController = MainScreenViewController()
    private var model = Model()
    
    
    func checkInput<T>(input: T) {
        
        if let stringInput = input as? String {
            
            // Pass it to the model
            let result = model.romanToInt(stringInput)
            conversionPerformed(result: result)
        } else if let integerInput = input as? Int {
            
            // Pass it to the model
            let result = model.intToRoman(integerInput)
            conversionPerformed(result: result)
        } else {
            
            print("Couldn't check the input")
            return
        }
    }
}

extension Presenter: ModelDelegate {
    func conversionPerformed<T>(result: T) {
        
        viewController.showContent(content: result)
        
    }

}
