//
//  DemoViewController.swift
//  Fitie
//
//  Created by Fahim Rahman on 10/5/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func aboutUsButtonAction(_ sender: UIButton) {
        
        //let storyboard = UIStoryboard(name: "AboutUs", bundle: Bundle(identifier: "AboutUs"))
        let storyboard = UIStoryboard(name: "AboutUs", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AboutUs")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func workoutAbsButtonAction(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "WorkoutAbs", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "WorkoutAbs")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func reportTimelineButtonAction(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "ReportTimeline", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ReportTimeline")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func reportActivityButtonAction(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "ReportActivity", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ReportActivity")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
