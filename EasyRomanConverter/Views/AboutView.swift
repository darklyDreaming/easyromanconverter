//
//  AboutView.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 13.02.2021.
//

import UIKit

class AboutView: UIView {

    lazy var aboutTextLabel: UILabel = {
        
        let label = UILabel()
        let text = NSAttributedString(string: "This small app was inspired by the respective Leetcode challenge. Have fun!", attributes: AttributedStrings.standardLabelText)
        label.attributedText = text
        label.numberOfLines = 0
        label.alpha = 0
        
        return label
    }()
    
    func configureAboutTextLabel(vc: AboutViewController) {
        
        vc.view.addSubview(aboutTextLabel)
        aboutTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        aboutTextLabel.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor).isActive = true
        aboutTextLabel.centerYAnchor.constraint(equalTo: vc.view.centerYAnchor).isActive = true
        
    }
    
    func setupAppearance() {
        
        self.backgroundColor = Colors.slightlyDimmedBeige
        self.alpha = 0
    }
}
