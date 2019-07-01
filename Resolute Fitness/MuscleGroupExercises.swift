//
//  MuscleGroupExercises.swift
//  Resolute Fitness
//
//  Created by Hunter North on 5/3/19.
//  Copyright © 2019 Hunter North. All rights reserved.
//

import UIKit

class MuscleGroupExercises: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var muscleGroupLabel: UILabel!
    var pageType: String!

    var list: [Exercise] = [];
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row].getName()
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        list = Array(AppDelegate.GlobalVariables.exerciseMap[pageType]!.sorted(by: <))
        muscleGroupLabel.text = pageType + " Exercises"
    }
}
