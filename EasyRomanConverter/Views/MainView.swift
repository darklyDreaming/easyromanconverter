//
//  MainView.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 03.02.2021.
//

import UIKit

class MainView: UIView {
    
    private lazy var textFieldView: UITextField = {
        
        let inputTextField = UITextField()
        inputTextField.placeholder = "Enter number here"
        inputTextField.defaultTextAttributes = AttributedStrings.standardLabelText
        inputTextField.borderStyle = .roundedRect
        return inputTextField
        
    }()
    
    private lazy var outputLabel: UILabel = {
        
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        let text = NSAttributedString.init(string: "Your result will appear here", attributes: AttributedStrings.standardLabelText)
        label.attributedText = text
        label.backgroundColor = .white
        label.alpha = 0.8
        
        return label
   
    }()
    
    private lazy var welcomeLabel: UILabel = {
        
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        let text = NSAttributedString.init(string: "Welcome to\nEasy Roman Converter", attributes: AttributedStrings.standardTitleText)
        label.attributedText = text
        
        label.numberOfLines = 2
        label.shadowColor = .systemGray5
        label.alpha = 0.8
        
        return label
    }()
    
    func setup() {
        
        configureTextField(for: self, textfield: textFieldView)
        configureWelcomeLabel(for: self, welcomeLabel: welcomeLabel)
        configureOutputLabel(for: self, outputLabel: outputLabel)
        
    }
}
