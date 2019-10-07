//
//  UILabel.swift
//  CompanyMeetingScheduler
//
//  Created by xeadmin on 09/07/19.
//  Copyright © 2019 Manav. All rights reserved.
//

import UIKit

extension UILabel{
    
    func addBorder(color:CGColor) {
        let frame = self.frame
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: frame.height + 21, width: frame.width - 2, height: 1)
        bottomLayer.backgroundColor = color
        self.layer.addSublayer(bottomLayer)
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 4.0
    }

}
