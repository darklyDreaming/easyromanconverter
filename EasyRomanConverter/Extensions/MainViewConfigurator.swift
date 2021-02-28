//
//  MainViewConfigurator.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 03.02.2021.
//
import Foundation
import UIKit
import SnapKit

extension UIView {

    /// This function sets makes the view fullscreen.
    func configureFullScreenConstraints(vc: UIViewController) {
        
        self.snp.makeConstraints { (make) in
            
            make.edges.equalToSuperview()
            
        }
        
    }
    
    func configureWelcomeLabel(for view: UIView, welcomeLabel: UILabel) {
        
        view.addSubview(welcomeLabel)
        
        welcomeLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(view).offset(100)
            make.left.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-20)
            make.centerX.equalToSuperview()
            make.height.equalTo(200)
            
        }
        
    }
    
    func configureTextField(for view: UIView, textfield: UITextField) {
        
        view.addSubview(textfield)
        
        textfield.snp.makeConstraints { (make) in
            
            make.top.equalToSuperview().offset(300)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(50)
            
        }
        
    }
    
    func configureOutputLabel(for view: UIView, outputLabel: UILabel) {
        
        view.addSubview(outputLabel)
        
        outputLabel.snp.makeConstraints { (make) in
            
            make.top.equalToSuperview().offset(400)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(50)
            
        }

    }
    
    func configureConvertButton(for view: UIView, button: UIButton) {
        
        view.addSubview(button)
        
        button.snp.makeConstraints { (make) in
            
            make.top.equalToSuperview().offset(500)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(50)
            
        }

    }
    
    func configureAboutButton(for view: UIView, button: UIButton) {
        
        view.addSubview(button)
        
        button.snp.makeConstraints { (make) in
            
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(50)
            make.bottom.equalToSuperview().offset(-40)
            make.centerX.equalToSuperview()
        
            
        }
        
    }
    
}
