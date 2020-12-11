//
//  RegistrationScreen.swift
//  Sidorova.task5
//
//  Created by Xenia Sidorova on 06.12.2020.
//

import UIKit

class RegistrationScreen : UIViewController {
    let loginTextField = CustomField()
    let passwordTextField = CustomField()
    let registrationButton = CustomButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = T.t("registration_screen")
        view.backgroundColor = .systemGray6


        setupLoginTextField()
        setupPasswordTextField()
        setupRegistrationButton()
    }

    func setupLoginTextField() {
        loginTextField.placeholder = T.t("enter_login")
        loginTextField.frame = CGRect(x: 50, y: view.frame.height/3, width: view.frame.width - 100, height: 31)

        view.addSubview(loginTextField)
    }

    func setupPasswordTextField() {
        passwordTextField.placeholder = T.t("enter_password")
        passwordTextField.isSecureTextEntry = true
        passwordTextField.frame = CGRect(x: 50, y: view.frame.height/2.5, width: view.frame.width - 100, height: 31)

        view.addSubview(passwordTextField)
    }
    @objc func back(parametrSender: Any) {
        navigationController?.pushViewController(WelcomeScreen(), animated: true)
    }

    private func setupRegistrationButton(){
        registrationButton.setTitle(T.t("registration"), for: .normal)
        registrationButton
            .frame = CGRect(x: 50, y: view.frame.height/2 + 150, width: view.frame.width - 100, height: 40)
        registrationButton
            .addTarget(self, action: #selector(back(parametrSender:)), for: .touchUpInside)

        view.addSubview(registrationButton)
    }
}

