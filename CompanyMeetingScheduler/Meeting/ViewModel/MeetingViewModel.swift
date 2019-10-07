//
//  MeetingViewModel.swift
//  CompanyMeetingScheduler
//
//  Created by xeadmin on 09/07/19.
//  Copyright © 2019 Manav. All rights reserved.
//

import Foundation

class MeetingViewModel {
    var meetingArray = [Meetings]()
    init(meeting:[Meeting]) {
        meeting.forEach { (meeting) in
            meetingArray.append(Meetings(meeting: meeting))
        }
    }
}

class Meetings{
    var startTime:String
    var endtime:String
    var timing:String
    var description:String
    var attendees:String
    
    init(meeting:Meeting) {
        self.startTime = meeting.start_time ?? ""
        self.endtime = meeting.end_time ?? ""
        self.description = meeting.description ?? ""
        self.timing = "\(String(describing: meeting.start_time ?? "")) - \(String(describing: meeting.end_time ?? ""))"
        if let attendees = meeting.participants {
            self.attendees = attendees.reduce("") {text, name in "\(text),\(name)"}
            self.attendees = String(self.attendees.dropFirst())
        }else {
            self.attendees = ""
        }
        
    }
}
