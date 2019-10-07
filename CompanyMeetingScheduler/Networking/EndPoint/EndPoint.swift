//
//  EndPoint.swift
//  CompanyMeetingScheduler
//
//  Created by Manav on 09/07/19.
//  Copyright © 2019 Manav. All rights reserved.
//

import Foundation


enum NetworkEnvironment {
    case qa
    case production
    case staging
}

public enum MeetingApi {
    case meeting(date:String)
}

extension MeetingApi: EndPointType {
    
    var environmentBaseURL : String {
        switch NetworkManager.environment {
        case .production: return "http://fathomless-shelf-5846.herokuapp.com/api"
        case .qa: return "http://fathomless-shelf-5846.herokuapp.com/api"
        case .staging: return "http://fathomless-shelf-5846.herokuapp.com/api"
        }
    }
    
    var baseURL: URL {
        guard let url = URL(string: environmentBaseURL) else { fatalError("baseURL could not be configured.")}
        return url
    }
    
    var path: String {
        switch self {
      
        case .meeting:
            return "schedule"
      
        }
    }
    
    var httpMethod: HTTPMethod {
        return .get
    }
    
    var task: HTTPTask {
        switch self {
        case .meeting(let date):
            return .requestParameters(bodyParameters: nil,
                                      bodyEncoding: .urlEncoding,
                                      urlParameters: ["date":date])
        }
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
}


