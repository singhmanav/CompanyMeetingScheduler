//
//  Date.swift
//  CompanyMeetingScheduler
//
//  Created by xeadmin on 09/07/19.
//  Copyright © 2019 Manav. All rights reserved.
//

import Foundation

extension Date
{
    func toString( dateFormat format  : DateFormat ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.string(from: self)
    }
    
}

enum DateFormat:String{
    case long = "EEEE, MM-dd-yyyy"
    case short = "dd-MM-yyyy"
    case shortSlash = "dd/MM/yyyy"
}
