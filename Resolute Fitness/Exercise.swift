//
//  Exercise.swift
//  Resolute Fitness
//
//  Created by Hunter North on 5/17/19.
//  Copyright © 2019 Hunter North. All rights reserved.
//

import UIKit

//CONVENTION THAT WE WILL NAME EACH EXERCISE OBJECT AS THE EXECISE IT REPRESENTS
class Exercise: NSObject, Comparable {
    private var name: String //Name of exercise
    private var information: String //Explanation of exercise
    private var oneRepWeight: Int //1 rep
    private var mediumWeight: Int //4-8 reps
    private var highWeight: Int //9+ reps
    private var setsCompleted: Int //Number of sets the user has completed of the exercise
    
    //Constructor for an exercise object
    //Parameters
        //desc - Short description of the exercise being created
        //Weights - All initialized to zero
            //Note that it may be a good idea to change this part later
    init(name: String, information: String) {
        self.name = name;
        self.information = information
        oneRepWeight = 0
        mediumWeight = 0
        highWeight = 0
        setsCompleted = 0
    }
    
    static func < (lhs: Exercise, rhs: Exercise) -> Bool {
        if (lhs.getName() < rhs.getName()) {
            return true
        } else {
            return false
        }
    }
    
    //Get name of exercise
    func getName() -> String{
        return name;
    }
    
    //Set method for one rep weight
    func setOneRepWeight(weight: Int) {
        oneRepWeight = weight
    }
    
    //Get method for one rep weight
    //Returns int
    func getOneRepWeight() -> Int{
        return oneRepWeight;
    }
    
    //Set method for medium weight
    func setMediumWeight(weight: Int) {
        mediumWeight = weight
    }
    
    //Get method for medium weight
    //Returns int
    func getMediumWeight() -> Int{
        return oneRepWeight;
    }
    
    //Set method for high weight
    func setHighWeight(weight: Int) {
        highWeight = weight
    }
    
    //Get method for high weight
    //Returns an int
    func getHighWeight() -> Int{
        return oneRepWeight;
    }
    
    func addMoreSetsCompleted(sets: Int) {
        setsCompleted += sets
    }
    
    func getSetsCompleted() -> Int {
        return setsCompleted
    }
}
