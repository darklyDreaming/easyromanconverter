//
//  AboutViewController.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 13.02.2021.
//

import UIKit

class AboutViewController: UIViewController {
    
    private lazy var contentView = AboutView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(contentView)
        contentView.configureFullScreenConstraints(vc: self)
        contentView.configureAboutTextLabel(vc: self)
        contentView.setupAppearance()
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        slideInAboutView()
    }
    
    func animateAtAppearance() {
        UIView.animate(withDuration: 0.6, delay: 0, options: .curveEaseOut, animations: {
            self.contentView.alpha = 1
            self.contentView.aboutTextLabel.alpha = 1
        }, completion: nil)
    }
    func slideInAboutView() {

        contentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 1000).isActive = true
        contentView.trailingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -1000).isActive = true
        contentView.alpha = 0
        contentView.layoutIfNeeded()
        
        UIView.animate(withDuration: 0.7, delay: 0, options: .curveEaseIn, animations: {
            self.contentView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
            self.contentView.trailingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        }, completion: nil)
        contentView.layoutIfNeeded()
    }
}
