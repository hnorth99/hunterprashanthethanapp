//
//  MuscleGroupExercises.swift
//  Resolute Fitness
//
//  Created by Hunter North on 5/3/19.
//  Copyright © 2019 Hunter North. All rights reserved.
//

import UIKit

class MuscleGroupExercises: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var muscleGroupLabel: UILabel! //Title at top of page
    var pageType: String! //Variable to keep track of what muscle group the page recommends

    var list: [Exercise] = []; //Sorted arraylist of all exsercises pertaining to muscle group
    
    //Establish number of rows that will be in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    //Assemble the table view
        //Or one prototype cell and repeatadly create it to construct the entire table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row].getName()
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        list = Array(AppDelegate.GlobalVariables.exerciseMap[pageType]!.sorted(by: <))
        muscleGroupLabel.text = pageType
    }
}
