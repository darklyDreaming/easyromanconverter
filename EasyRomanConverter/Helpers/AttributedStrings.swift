//
//  Attributed Strings.swift
//  EasyRomanConverter
//
//  Created by Yulia Tsyrkunova on 03.02.2021.
//

import Foundation
import UIKit

struct AttributedStrings {
    
    static let standardButtonText: [NSAttributedString.Key: Any] = [
        .foregroundColor : UIColor.white,
        .font : UIFont(name: "Arial Hebrew", size: 20)
    ]
    
    static let standardLabelText: [NSAttributedString.Key: Any] = [
        .foregroundColor : UIColor.black,
        .font : UIFont(name: "Arial Hebrew", size: 20)
    ]
    
    static let standardTitleText: [NSAttributedString.Key: Any] = [
        .foregroundColor : UIColor.black,
        .font : UIFont(name: "Arial Hebrew", size: 28),
    ]
}
