//
//  ReportActivityViewController.swift
//  Fitie
//
//  Created by Fahim Rahman on 10/5/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit
import MBCircularProgressBar

class ReportActivityViewController: UIViewController {
    
    @IBOutlet weak var progressView: MBCircularProgressBarView!
    
    @IBOutlet weak var dateAndDayLabel: UILabel!
    
    @IBOutlet weak var workoutStatusLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var statusArrow: UIButton!
    
    @IBOutlet weak var workoutUnitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dateAndDayLabel.text = "6\nFRI"
        self.workoutStatusLabel.text = "Walking"
        self.workoutUnitLabel.text = "Steps"
        self.timeLabel.text = "50 min"
        
        self.progressView.value = 1500
        
        self.progressView.maxValue = 6000
    }
    
    @IBAction func forwardArrowAction(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1.0) {
            
            self.dateAndDayLabel.text = "6\nFRI"
            self.workoutStatusLabel.text = "Walking"
            self.workoutUnitLabel.text = "Steps"
            self.timeLabel.text = "50 min"
            
            self.progressView.value = 5300
        }
        
    }
    
    @IBAction func backwardArrowAction(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1.0) {
            
            self.dateAndDayLabel.text = "4\nWED"
            self.workoutStatusLabel.text = "Walking"
            self.workoutUnitLabel.text = "Steps"
            self.timeLabel.text = "1 hour 6 min"
            
            self.progressView.value = 1000
        }
    }
}
