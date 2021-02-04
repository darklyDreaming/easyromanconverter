//
//  MainScreenViewController.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 03.02.2021.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    private var presenter = Presenter()
    private var contentView = MainView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(contentView)
        setup()
    }
    
    func showContent<T>(content: T) {
        
        
    }
    
    private func setup() {
        
        contentView.configureFullScreenConstraints(vc: self)
        contentView.setBackground(color: Colors.classicBeige)
        contentView.setup()
        
    
    }
     
}
