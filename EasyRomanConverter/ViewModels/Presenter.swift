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
    func checkInput(input: String) {
        
        if input.isInt {
            
            guard let integerInput = Int(input) else {
                return
            }
            
            let result = model.intToRoman(integerInput)
            conversionPerformed(result: result)
            
        } else {
            
            let result = String(model.romanToInt(input))
            conversionPerformed(result: result)
            
        }
    }
}

extension Presenter: ModelDelegate {
    
    func conversionPerformed<T>(result: T) {
        viewController?.showContent(content: result)
    }
    
}
