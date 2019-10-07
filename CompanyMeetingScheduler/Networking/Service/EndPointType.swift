//
//  EndPoint.swift
//  CompanyMeetingScheduler
//
//  Created by Manav on 09/07/19.
//  Copyright © 2019 Manav. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}

