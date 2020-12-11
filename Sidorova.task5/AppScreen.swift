//
//  AppScreen.swift
//  Sidorova.task5
//
//  Created by Xenia Sidorova on 06.12.2020.
//

import UIKit

class AppScreen : UIViewController {
    var userName: String?
    var welcomeLabel = UILabel()
    var appImageView = UIImageView()
    let appImage = UIImage(named: T.t("flag"))
    let backButton = CustomButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //title = "Welcome to App!"
        view.backgroundColor = UIColor(red: 177/255.0, green: 159/255.0, blue: 218/255.0, alpha: 1)
        self.navigationController?.navigationBar.isHidden = true

        setupLabel()
        setupImage()
        setupBackButton()
    }
    func setupLabel() {
        welcomeLabel.text = T.t("hi")
        welcomeLabel.text?.append ("\(userName!)!")
        welcomeLabel.textColor = .white
        welcomeLabel.frame = CGRect(x: 50, y: view.frame.height/6, width: view.frame.width - 100, height: 50)
        welcomeLabel.textAlignment = .center
        welcomeLabel.backgroundColor = .systemIndigo
        welcomeLabel.layer.cornerRadius = 5
        welcomeLabel.clipsToBounds = true
        
        view.addSubview(welcomeLabel)
    }

    func setupImage() {
        appImageView.center = view.center
        appImageView.layer.cornerRadius = 10
        appImageView.clipsToBounds = true
        appImageView.image = appImage
        
        appImageView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(appImageView)

        appImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        appImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        appImageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        appImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
    }
    @objc func back(parametrSender: Any) {
        navigationController?.pushViewController(LoginScreen(), animated: true)
    }

    private func setupBackButton(){
        backButton.setTitle(T.t("back"), for: .normal)
        backButton
            .frame = CGRect(x: 150, y: 50, width: view.frame.width - 300, height: 40)
        backButton
            .addTarget(self, action: #selector(back(parametrSender:)), for: .touchUpInside)

        view.addSubview(backButton)
    }
}
