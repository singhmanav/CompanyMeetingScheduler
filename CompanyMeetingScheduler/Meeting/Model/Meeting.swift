//
//  Meeting.swift
//  CompanyMeetingScheduler
//
//  Created by xeadmin on 09/07/19.
//  Copyright © 2019 Manav. All rights reserved.
//

import Foundation

public struct Meeting:Codable{
    var start_time: String?
    var end_time: String?
    var description: String?
    var participants: [String]?
}
