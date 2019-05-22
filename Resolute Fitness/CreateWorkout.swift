//
//  CreateWorkout.swift
//  Resolute Fitness
//
//  Created by Hunter North on 4/30/19.
//  Copyright © 2019 Hunter North. All rights reserved.
//

import UIKit

class CreateWorkout: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let muscleGroupExercises = segue.destination as? MuscleGroupExercises else {return}
        muscleGroupExercises.pageType = "chest"
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
