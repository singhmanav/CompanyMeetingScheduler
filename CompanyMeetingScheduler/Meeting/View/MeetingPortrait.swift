//
//  MeetingTableViewCell.swift
//  CompanyMeetingScheduler
//
//  Created by xeadmin on 09/07/19.
//  Copyright © 2019 Manav. All rights reserved.
//

import UIKit

class MeetingPortrait: UITableViewCell {
    
    @IBOutlet weak var meetingTime: UILabel!
    @IBOutlet weak var meetingDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        meetingTime.addBorder(color: UIColor.lightGray.withAlphaComponent(0.6).cgColor)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(meeting:Meetings) {
        meetingTime.text = meeting.timing
        meetingDescription.text = meeting.description
    }
}
