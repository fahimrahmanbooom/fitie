//
//  Workout(ABS)ViewController.swift
//  Fitie
//
//  Created by Fahim Rahman on 10/5/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

class WorkoutAbsViewController: UIViewController {
    
    let nameOfAllExercise = ["Jumping Jacks","Leg Raises","Plank","Heel Touch","Crunches"]
    
    let timesOfAllExercise = ["x20","x16","x20","x20","x16"]
    
    let exerciseImagesCell = ["jumpingJacksCell","legRaisesCell","plankCell","heelTouchCell","crunchesCell"]
    
    let exerciseImages = ["jumpingJacks","legRaises","plank","heelTouch","crunches"]
    
    @IBOutlet weak var workoutAbsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workoutAbsTableView.tableFooterView = UIView()
        
        workoutAbsTableView.delegate = self
        workoutAbsTableView.dataSource = self
    }
    
}



// workout abs tableview
extension WorkoutAbsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let absCell: WorkoutAbsTableViewCell = workoutAbsTableView.dequeueReusableCell(withIdentifier: "absCell", for: indexPath) as! WorkoutAbsTableViewCell
        
        absCell.exerciseImage.image = UIImage(named: exerciseImagesCell[indexPath.row])
        absCell.nameOfTheExercise.text = nameOfAllExercise[indexPath.row]
        absCell.timesOfTheExercise.text = timesOfAllExercise[indexPath.row]
        
        return absCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        DispatchQueue.main.async {
            
            let storyboard = UIStoryboard(name: "WorkoutAbs", bundle: nil)
            
            let vc = storyboard.instantiateViewController(
                withIdentifier: "absPopOver") as! absPopOverViewController
            
            vc.exerciseImageString = self.exerciseImages[indexPath.row]
            vc.exerciseName = self.nameOfAllExercise[indexPath.row]
            
            vc.modalPresentationStyle = .overCurrentContext
            self.present(vc, animated: true)
        }

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
