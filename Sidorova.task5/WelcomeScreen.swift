//
//  WelcomeScreen.swift
//  Sidorova.task5
//
//  Created by Xenia Sidorova on 06.12.2020.
//

import UIKit

class WelcomeScreen : UIViewController {

    private var displayLoginScreenButton = UIButton()
    private var displayRegistrationScreenButton = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome Screen"

        setupLoginButton()
        setupRegistrationButton()

    }

    @objc func performDisplayLogin (parametrSender: Any) {
        navigationController?.pushViewController(LoginScreen(), animated: true)
    }

//    displayLoginScreenButton = UIButton(type: .system)
//    displayLoginScreenButton.backgroundColor = .systemIndigo
//    displayLoginScreenButton.tintColor = .white

    private func setupLoginButton(){
        displayLoginScreenButton = UIButton(type: .system)
        displayLoginScreenButton.setTitle("Login", for: .normal)
        displayLoginScreenButton.backgroundColor = .systemIndigo
        displayLoginScreenButton.tintColor = .white
        displayLoginScreenButton
            .frame = CGRect(x: 50, y: view.frame.height/3, width: view.frame.width - 100, height: 40)

        displayLoginScreenButton
            .addTarget(self, action: #selector(performDisplayLogin(parametrSender:)), for: .touchUpInside)

        view.addSubview(displayLoginScreenButton)
    }

    @objc func performDisplayRegistration (parametrSender: Any) {
        navigationController?.pushViewController(RegistrationScreen(), animated: true)
    }

    private func setupRegistrationButton(){
        displayRegistrationScreenButton = UIButton(type: .system)
        displayRegistrationScreenButton.setTitle("Registration", for: .normal)
        displayRegistrationScreenButton.backgroundColor = .systemIndigo
        displayRegistrationScreenButton.tintColor = .white
        displayRegistrationScreenButton
            .frame = CGRect(x: 50, y: view.frame.height/2, width: view.frame.width - 100, height: 40)

        displayRegistrationScreenButton
            .addTarget(self, action: #selector(performDisplayRegistration(parametrSender:)), for: .touchUpInside)

        view.addSubview(displayRegistrationScreenButton)
    }
}
