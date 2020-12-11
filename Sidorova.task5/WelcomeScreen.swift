//
//  WelcomeScreen.swift
//  Sidorova.task5
//
//  Created by Xenia Sidorova on 06.12.2020.
//

import UIKit

class WelcomeScreen : UIViewController {
    private var loginScreenButton = CustomButton()
    private var registrationScreenButton = CustomButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = T.t("welcome_screen")
        view.backgroundColor = .systemGray6

        setupLoginButton()
        setupRegistrationButton()

    }

    @objc func performDisplayLogin (parametrSender: Any) {
        navigationController?.pushViewController(LoginScreen(), animated: true)
    }


    private func setupLoginButton() {
        loginScreenButton = CustomButton(
            frame: CGRect(x: 50, y: view.frame.height/3, width: view.frame.width - 100, height: 40)
        )
        loginScreenButton.setTitle(T.t("login_button"), for: .normal)
        loginScreenButton
            .addTarget(self, action: #selector(performDisplayLogin(parametrSender:)), for: .touchUpInside)

        view.addSubview(loginScreenButton)
    }

    @objc func performDisplayRegistration (parametrSender: Any) {
        navigationController?.pushViewController(RegistrationScreen(), animated: true)
    }

    private func setupRegistrationButton(){
        registrationScreenButton.setTitle(T.t("registration_button"), for: .normal)
        registrationScreenButton
            .frame = CGRect(x: 50, y: view.frame.height/2, width: view.frame.width - 100, height: 40)

        registrationScreenButton
            .addTarget(self, action: #selector(performDisplayRegistration(parametrSender:)), for: .touchUpInside)

        view.addSubview(registrationScreenButton)
    }
}
