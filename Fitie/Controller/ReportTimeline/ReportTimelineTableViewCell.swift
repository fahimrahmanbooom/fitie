//
//  ReportTimelineTableViewCell.swift
//  Fitie
//
//  Created by Fahim Rahman on 14/5/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

class ReportTimelineTableViewCell: UITableViewCell {

    @IBOutlet weak var reportTimelineActivityLabel: UILabel!
    @IBOutlet weak var reportTimelineValueLabel: UILabel!
    @IBOutlet weak var reportTimelineImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
