//
//  CustomField.swift
//  Sidorova.task5
//
//  Created by Xenia Sidorova on 06.12.2020.
//

import UIKit

class CustomField : UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 5
        self.backgroundColor = .white
        self.layer.borderColor = UIColor.systemIndigo.cgColor
        self.layer.borderWidth = 4
        self.textAlignment = .center
        self.contentVerticalAlignment = .center
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
