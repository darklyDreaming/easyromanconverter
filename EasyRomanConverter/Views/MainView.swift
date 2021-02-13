//
//  MainView.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 03.02.2021.
//

import UIKit

class MainView: UIView {
    
    lazy var textFieldView: UITextField = {
        
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
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.alpha = 0.3
        
        return label
   
    }()
    
    private lazy var welcomeLabel: UILabel = {
        
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        let text = NSAttributedString.init(string: "Easy Roman Converter", attributes: AttributedStrings.standardTitleText)
        label.attributedText = text
        label.numberOfLines = 2
        label.shadowColor = .systemGray5
        label.alpha = 0.7
        
        return label
    }()
    
    lazy var convertButton: UIButton = {
        
        let button = UIButton()
        let title = NSAttributedString.init(string: "Convert", attributes: AttributedStrings.standardButtonText)
        button.setAttributedTitle(title, for: .normal)
        button.backgroundColor = Colors.chocoBrown
        button.layer.cornerRadius = 10
        button.isUserInteractionEnabled = true
        
        return button
        
    }()
    
    lazy var aboutButton: UIButton = {
        
        let button = UIButton()
        let title = NSAttributedString.init(string: "About the app", attributes: AttributedStrings.aboutButtonText)
        button.setAttributedTitle(title, for: .normal)
        
        return button
        
    }()
    
    /// Configures the constraints for elements of the view.
    func setup() {
        
        configureTextField(for: self, textfield: textFieldView)
        configureWelcomeLabel(for: self, welcomeLabel: welcomeLabel)
        configureOutputLabel(for: self, outputLabel: outputLabel)
        configureConvertButton(for: self, button: convertButton)
        configureAboutButton(for: self, button: aboutButton)
        
    }
    
    /// Presents the result in the output text label.
    
    func showOutput<T>(output: T) {
        
        outputLabel.text = output as? String
        
    }
    
    /// Shows error in the output text label.
    func showError() {
        
        outputLabel.text = "Error"
        
    }
    
}
