//
//  ViewController.swift
//  CompanyMeetingScheduler
//
//  Created by xeadmin on 09/07/19.
//  Copyright © 2019 Manav. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var meetingTableView: UITableView!
    var viewModel : MeetingViewModel?{
        didSet{
            DispatchQueue.main.async {
                self.setTitle()
                self.meetingTableView.reloadData()
            }
        }
    }
    private var selectedDate : Date!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedDate = Date()
        self.setTitle()
        self.setupUI()
        self.getMeetingData(date: self.selectedDate.toString(dateFormat: .shortSlash))
        // Do any additional setup after loading the view.
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        self.meetingTableView.reloadData()
        self.setTitle()
        super.viewWillTransition(to: size, with: coordinator)
        
    }

    @IBAction func scheduleMeeting(_ sender: UIButton) {
    }
    
    func setTitle() {
        if Utility.isPotrait {
            self.title = self.selectedDate.toString(dateFormat: .short)
        }else {
            self.title = self.selectedDate.toString(dateFormat: .long)
        }
    }
    
    
    func setupUI(){
        self.meetingTableView.tableFooterView = UIView()
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
    }
    
    func getMeetingData(date:String){
        DispatchQueue.global().async {
            NetworkManager.sharedNetworkManager.getMeetingFor(date: date, completion: { (meetings, error) in
                self.viewModel = MeetingViewModel(meeting: meetings ?? [Meeting]())
            })
        }
    }
    
    @IBAction func nextDate(_ sender: UIBarButtonItem) {
        self.selectedDate = Calendar.current.date(byAdding: .day, value: 1, to: self.selectedDate) ?? self.selectedDate
        self.getMeetingData(date: self.selectedDate.toString(dateFormat: .shortSlash))
    }
    
    @IBAction func prevDate(_ sender: UIBarButtonItem) {
        self.selectedDate = Calendar.current.date(byAdding: .day, value: -1, to: self.selectedDate) ?? self.selectedDate
        self.getMeetingData(date: self.selectedDate.toString(dateFormat: .shortSlash))
    }
}

