//
//  CustomTextField.swift
//  InstagramFirestoreTutorial
//
//  Created by Erkan Kızgın on 23.03.2022.
//

import UIKit

class CustomTextField: UITextField {
    
     init(placeHolder: String) {
         super.init(frame: .zero)
         
         let spacer = UIView()
         spacer.setDimensions(height: 50, width: 12)
         leftView = spacer
         leftViewMode = .always
         
         borderStyle = .none
         textColor = .white
         keyboardAppearance = .dark
         keyboardType = .emailAddress
         backgroundColor = UIColor(white: 1, alpha: 0.1)
         setHeight(50)
         attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [.foregroundColor:UIColor(white: 1, alpha: 0.7)])
        
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
}
