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
    
    func animateAtAppearance() {
        UIView.animate(withDuration: 0.6, delay: 0, options: .curveEaseOut, animations: {
            self.contentView.alpha = 1
            self.contentView.aboutTextLabel.alpha = 1
        }, completion: nil)
    }
}
