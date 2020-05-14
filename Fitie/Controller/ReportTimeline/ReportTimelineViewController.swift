//
//  ReportTimelineViewController.swift
//  Fitie
//
//  Created by Fahim Rahman on 10/5/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

var dates = [String]()
var activities = [String]()
var values = [String]()
var imageString = [String]()

class ReportTimelineViewController: UIViewController {

    @IBOutlet weak var reportTimelineTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reportTimelineTableView.delegate = self
        reportTimelineTableView.dataSource = self
        
        dates = ["Fri, 12 February","Sat, 13 February","Sun, 14 February","Mon, 15 February"]
        activities = ["Running","Walking","Running","Running"]
        values = ["2.3 km in 24 min","1.2 km in 24 min","1.3 km in 21 min","5.3 km in 34 min"]
        imageString = ["running","running","running","running"]
    }
    
}



// Report Timeline TableView

extension ReportTimelineViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return activities.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dates[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return values.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let reportTimelineCell: ReportTimelineTableViewCell = reportTimelineTableView.dequeueReusableCell(withIdentifier: "reportTimelineCell", for: indexPath) as! ReportTimelineTableViewCell
        
        reportTimelineCell.reportTimelineActivityLabel.text = activities[indexPath.row]
        reportTimelineCell.reportTimelineValueLabel.text = values[indexPath.row]
        reportTimelineCell.reportTimelineImageView.image = UIImage(named: imageString[indexPath.row])
        
        return reportTimelineCell
    }
    
}
