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
    @IBOutlet weak var exerciseTable: UITableView!
    let list = ["first", "second", "third", "fourth"]
    var pageType: String
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "standardCell")
        //let cell = tableView.dequeueReusableCell(withIdentifier: "standardCell", for: indexPath)
        //cell.textLabel?.text = list[indexPath.row]
        
        //return cell
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
