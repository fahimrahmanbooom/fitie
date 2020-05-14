//
//  absPopOverViewController.swift
//  Fitie
//
//  Created by Fahim Rahman on 10/5/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

class AbsPopOverViewController: UIViewController {
    
    @IBOutlet weak var exerciseImageView: UIImageView!
    
    @IBOutlet weak var exerciseNameLabel: UILabel!
    
    @IBOutlet weak var exerciseDetailLabel: UILabel!
    
    var exerciseName: String = String()
    var exerciseImageString: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.isOpaque = false
        view?.backgroundColor = UIColor(white: 0, alpha: 0.5)
        
        exerciseNameLabel.text = exerciseName
        exerciseImageView.image = UIImage(named: exerciseImageString)
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
