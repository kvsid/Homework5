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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Welcome to App!"
        view.backgroundColor = .systemIndigo

        setupLabel()
    }
    func setupLabel() {
        welcomeLabel.text = "Hi, \(userName!)!"
        welcomeLabel.textColor = .white
        welcomeLabel.frame = CGRect(x: 0, y: view.frame.height/3, width: view.frame.width, height: 50)
        welcomeLabel.textAlignment = .center
        
        
        view.addSubview(welcomeLabel)
    }
}
