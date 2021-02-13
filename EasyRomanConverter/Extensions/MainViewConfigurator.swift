//
//  MainViewConfigurator.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 03.02.2021.
//
import Foundation
import UIKit


extension UIView {
    
    func setBackground(color: UIColor) {
        
        self.backgroundColor = color
        
    }
    /// This function sets makes the view fullscreen.
    func configureFullScreenConstraints(vc: UIViewController) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.leftAnchor.constraint(equalTo: vc.view.leftAnchor).isActive = true
        self.rightAnchor.constraint(equalTo: vc.view.rightAnchor).isActive = true
        self.topAnchor.constraint(equalTo: vc.view.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: vc.view.bottomAnchor).isActive = true
        
    }
    
    func configureWelcomeLabel(for view: UIView, welcomeLabel: UILabel) {
        
        view.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        welcomeLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        welcomeLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        welcomeLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
    func configureTextField(for view: UIView, textfield: UITextField) {
        
        view.addSubview(textfield)
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        textfield.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        textfield.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        textfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textfield.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        textfield.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    func configureOutputLabel(for view: UIView, outputLabel: UILabel) {
        
        view.addSubview(outputLabel)
        outputLabel.translatesAutoresizingMaskIntoConstraints = false
        
        outputLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        outputLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        outputLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        outputLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        outputLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
        
    }
    
    func configureConvertButton(for view: UIView, button: UIButton) {
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    }
    
    func configureAboutButton(for view: UIView, button: UIButton) {
        
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
}
