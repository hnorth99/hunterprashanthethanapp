//
//  ViewController.swift
//  Resolute Fitness
//
//  Created by Hunter North on 4/19/19.
//  Copyright © 2019 Hunter North. All rights reserved.
//

import UIKit

class StartScreen: UIViewController {
    @IBOutlet weak var resoluteLabel: UILabel!
    @IBOutlet weak var fitnessLabel: UILabel!
    @IBOutlet weak var mainLogoImage: UIImageView!
    @IBOutlet weak var suggestedWorkoutButton: UIButton!
    @IBOutlet weak var createWorkoutButton: UIButton!
    @IBOutlet weak var savedWorkoutsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        spinMainLogoImage()
    }

    func spinMainLogoImage() {
        UIView.animate(withDuration: 0.8, animations: ({
            self.mainLogoImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }))
    }

}

