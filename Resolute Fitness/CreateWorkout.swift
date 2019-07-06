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
    
    //Segue to let the MuscleGroupExercises page know what muscle group it will be showing
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let muscleGroupExercises = segue.destination as? MuscleGroupExercises else {return}
        if (segue.identifier == "chestSegue") {
            muscleGroupExercises.pageType = "Chest"
        } else if (segue.identifier == "backSegue") {
            muscleGroupExercises.pageType = "Back"
        } else if (segue.identifier == "legsSegue") {
            muscleGroupExercises.pageType = "Legs"
        } else if (segue.identifier == "shouldersSegue") {
            muscleGroupExercises.pageType = "Shoulders"
        } else if (segue.identifier == "armsSegue") {
            muscleGroupExercises.pageType = "Arms"
        } else if (segue.identifier == "coreSegue") {
            muscleGroupExercises.pageType = "Core"
        }
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
