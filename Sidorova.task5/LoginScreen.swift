//
//  LoginScreen.swift
//  Sidorova.task5
//
//  Created by Xenia Sidorova on 06.12.2020.
//

import UIKit

class LoginScreen : UIViewController {
    let loginTextField = UITextField()
    let passwordTextField = UITextField()
    var signInButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login Screen"

        setupLoginTextField()
        setupPasswordTextField()
        setupSignInButton()
    }
    public func loginTextFieldText(name: String?) -> String? {
        let name = loginTextField.text
        return name
    }

    func setupLoginTextField() {
        loginTextField.backgroundColor = .white
        loginTextField.placeholder = "Enter your login"
        loginTextField.layer.borderColor = UIColor.systemIndigo.cgColor
        loginTextField.layer.borderWidth = 4
        loginTextField.textAlignment = .center
        loginTextField.contentVerticalAlignment = .center
        loginTextField.frame = CGRect(x: 50, y: view.frame.height/3, width: view.frame.width - 100, height: 31)

        view.addSubview(loginTextField)
    }

    func setupPasswordTextField() {
        passwordTextField.backgroundColor = .white
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.layer.borderColor = UIColor.systemIndigo.cgColor
        passwordTextField.layer.borderWidth = 4
        passwordTextField.textAlignment = .center
        passwordTextField.isSecureTextEntry = true
        passwordTextField.contentVerticalAlignment = .center
        passwordTextField.frame = CGRect(x: 50, y: view.frame.height/2, width: view.frame.width - 100, height: 31)

        view.addSubview(passwordTextField)
    }
    @objc func performApp(parametrSender: Any) {
        let appScreneController = AppScreen()
        appScreneController.userName = loginTextField.text
        navigationController?.pushViewController(appScreneController, animated: true)
    }

    private func setupSignInButton(){
        signInButton = UIButton(type: .system)
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.backgroundColor = .systemIndigo
        signInButton.tintColor = .white
        signInButton
            .frame = CGRect(x: 50, y: view.frame.height/2 + 150, width: view.frame.width - 100, height: 40)

        signInButton
            .addTarget(self, action: #selector(performApp(parametrSender:)), for: .touchUpInside)

        view.addSubview(signInButton)
    }
}