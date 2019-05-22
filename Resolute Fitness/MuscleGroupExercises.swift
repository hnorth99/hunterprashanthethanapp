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
    let list = ["first", "second", "third", "fourth"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        muscleGroupLabel.text = pageType
    }
    //
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
