//
//  workoutAbsTableViewCell.swift
//  Fitie
//
//  Created by Fahim Rahman on 10/5/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

class WorkoutAbsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var absContentView: UIView!
    
    @IBOutlet weak var exerciseImage: UIImageView!
    
    @IBOutlet weak var nameOfTheExercise: UILabel!
    
    @IBOutlet weak var timesOfTheExercise: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        absContentView.layer.cornerRadius = 15
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
