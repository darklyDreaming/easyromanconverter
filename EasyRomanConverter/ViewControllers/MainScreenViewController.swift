//
//  MainScreenViewController.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 03.02.2021.
//
// TODO: Fix the keyboard insets
import UIKit

class MainScreenViewController: UIViewController {
    
    private var presenter: Presenter?
    private var contentView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(contentView)
        setup()
        presenter = Presenter()
        presenter?.viewController = self
        contentView.convertButton.addTarget(self, action: #selector(convertNumber), for: .touchUpInside)
        contentView.aboutButton.addTarget(self, action: #selector(showAboutScreen), for: .touchUpInside)

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        contentView.endEditing(true)
        super.touchesBegan(touches, with: event)
        
    }
    
    func showContent<T>(content: T) {
        
        contentView.showOutput(output: content)
        
    }
    
    private func setup() {
        
        contentView.configureFullScreenConstraints(vc: self)
        contentView.backgroundColor = Colors.classicBeige
        contentView.setup()
        
    }
     
    @objc private func convertNumber() {
        
        let userInput = contentView.textFieldView.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        if let userInput = userInput {
            presenter?.checkInput(input: userInput)
        } else {
            contentView.showError()
        }
        
    }

    @objc private func showAboutScreen() {
        
        let aboutVC = AboutViewController()
        
            self.present(aboutVC, animated: true) {
                aboutVC.animateAtAppearance()
        }
    }
    
    // TODO: -Fix error showing
    func showError() {
        
        contentView.showError()
        
    }
}

