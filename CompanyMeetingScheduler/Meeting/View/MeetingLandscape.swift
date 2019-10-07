//
//  MeetingLandscape.swift
//  CompanyMeetingScheduler
//
//  Created by xeadmin on 09/07/19.
//  Copyright © 2019 Manav. All rights reserved.
//

import UIKit

class MeetingLandscape: UITableViewCell {
    
    @IBOutlet weak var meetingEndTime: UILabel!
    @IBOutlet weak var meetingDescription: UILabel!
    @IBOutlet weak var invities: UILabel!
    @IBOutlet weak var meetingStartTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(meeting:Meetings) {
        meetingEndTime.text = meeting.endtime
        meetingStartTime.text = meeting.startTime
        meetingDescription.text = meeting.description
        invities.text = meeting.attendees
    }
}
