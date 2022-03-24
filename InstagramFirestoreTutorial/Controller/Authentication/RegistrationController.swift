//
//  RegistrationController.swift
//  InstagramFirestoreTutorial
//
//  Created by Erkan Kızgın on 23.03.2022.
//

import UIKit

class RegistrationController: UIViewController {
    
    // MARK: - Properties
    
    private let plusPhotoButton:UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "plus_photo"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    private let usernameTextField: UITextField = {
        
        let textField = CustomTextField(placeHolder: "Username")
        return textField
    }()
    
    private let emailTextField: UITextField = {
        
        let textField = CustomTextField(placeHolder: "Email")
        return textField
    }()
    
    private let fullNameTextField: UITextField = {
        
        let textField = CustomTextField(placeHolder: "Full Name")
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        
        let textField = CustomTextField(placeHolder: "Password")
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let signUpButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        button.layer.cornerRadius = 5
        button.setHeight(50)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    
    private let alreadyHaveAnAccountAttrButton: UIButton = {
        let button = UIButton(type: .system)
        button.attributedTitle(firstPart: "Already have an account ?", SecondPart: "Sign In")
        button.addTarget(self, action: #selector(navigateToSignIn), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Actions
    
    @objc func navigateToSignIn(){
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        configureGradientLayer()
        
        view.addSubview(plusPhotoButton)
        plusPhotoButton.centerX(inView: view)
        plusPhotoButton.setDimensions(height: 140, width: 140)
        plusPhotoButton.anchor(top: view.safeAreaLayoutGuide.topAnchor,paddingTop: 32)
        
        let stack = UIStackView(arrangedSubviews: [emailTextField,passwordTextField,fullNameTextField,usernameTextField,signUpButton])
        stack.spacing = 10
        stack.axis = .vertical
        
        view.addSubview(stack)
        stack.anchor(top: plusPhotoButton.bottomAnchor,left: view.leftAnchor, right: view.rightAnchor , paddingTop: 32, paddingLeft: 32, paddingRight: 32)
        
        view.addSubview(alreadyHaveAnAccountAttrButton)
        alreadyHaveAnAccountAttrButton.anchor(left: view.safeAreaLayoutGuide.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor ,right: view.safeAreaLayoutGuide.rightAnchor, paddingLeft: 32, paddingBottom: 0, paddingRight: 32)
    }
}
