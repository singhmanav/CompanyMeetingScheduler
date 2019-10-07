//
//  MeetingDataSource.swift
//  CompanyMeetingScheduler
//
//  Created by xeadmin on 09/07/19.
//  Copyright © 2019 Manav. All rights reserved.
//

import UIKit

extension ViewController{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.meetingArray.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell
        if Utility.isPotrait{
            cell = tableView.dequeueReusableCell(withIdentifier: MeetingPortrait.reuseIdentifier, for: indexPath)
            (cell as? MeetingPortrait)?.configureCell(meeting: viewModel!.meetingArray[indexPath.row])
        } else{
            cell = tableView.dequeueReusableCell(withIdentifier: MeetingLandscape.reuseIdentifier, for: indexPath)
            (cell as? MeetingLandscape)?.configureCell(meeting: viewModel!.meetingArray[indexPath.row])
        }
        return cell
    }
}
