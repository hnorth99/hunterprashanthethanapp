//
//  AppDelegate.swift
//  Resolute Fitness
//
//  Created by Hunter North on 4/19/19.
//  Copyright © 2019 Hunter North. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var firstRun = true //toggeled off once the user opens the app for the first time -> stays off forever

    //Struct sets up global variables which can be accessed in any class throughout project
    struct GlobalVariables {
        static var exerciseMap: [String : Set<Exercise>] = [:] //Map from a muscle group to a corresponding set of exercises
        
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // If branch below only runs one time to create the exercise database
        if (firstRun) {
            firstRun = false
            buildExerciseDatabase()
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    func buildExerciseDatabase() {
        //Create the set associated with each muscle group and store it within the exercise map
        GlobalVariables.exerciseMap["Chest"] = Set<Exercise>()
        GlobalVariables.exerciseMap["Back"] = Set<Exercise>()
        GlobalVariables.exerciseMap["Legs"] = Set<Exercise>()
        GlobalVariables.exerciseMap["Shoulders"] = Set<Exercise>()
        GlobalVariables.exerciseMap["Arms"] = Set<Exercise>()
        GlobalVariables.exerciseMap["Abs"] = Set<Exercise>()

        //CHEST EXERCISES
        //Create chest exercise objects and store them inside the exercise map
        //BARBELL EXERCISES
        let barbellBenchPress: Exercise = Exercise(name: "Barbell Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(barbellBenchPress)
        
        let inclineBarbellBenchPress: Exercise = Exercise(name: "Incline Barbell Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(inclineBarbellBenchPress)
        
        let declineBarbellBenchPress: Exercise = Exercise(name: "Decline Barbell Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(declineBarbellBenchPress)
    
        let pauseBarbellBenchPress: Exercise = Exercise(name: "Pause Barbell Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(pauseBarbellBenchPress)
        
        let closedGripBarbellBenchPress: Exercise = Exercise(name: "Closed Grip Barbell Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(closedGripBarbellBenchPress);
        
        let landminePress: Exercise = Exercise(name: "Landmine Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(landminePress)
        
        //DUMBELL EXERCISES
        let dumbellBenchPress: Exercise = Exercise(name: "Dumbbell Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(dumbellBenchPress)
        
        let inclineDumbbellBenchPress: Exercise = Exercise(name: "Incline Dumbell Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(inclineDumbbellBenchPress)
        
        let declineDumbbellBenchPress: Exercise = Exercise(name: "Decline Dumbbell Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(declineDumbbellBenchPress)
        
        let dumbbellPullover: Exercise = Exercise(name: "Dumbbell Pullover", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(dumbbellPullover)
        
        let singleArmDumbbellPress: Exercise = Exercise(name: "Single Arm Dumbbell Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(singleArmDumbbellPress)
        
        let dumbellFlys: Exercise = Exercise(name: "Dumbbell Flys", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(dumbellFlys)
        
        let inclineDumbellFlys: Exercise = Exercise(name: "Incline Dumbbell Flys", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(inclineDumbellFlys)
        
        let declineDumbellFlys: Exercise = Exercise(name: "Decline Dumbbell Flys", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(declineDumbellFlys)
        
        //MACHINE EXERCISES
        let machineChestPress: Exercise = Exercise(name: "Machine Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(machineChestPress)
        
        let inclineMachineChestPress: Exercise = Exercise(name: "Incline Machine Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(inclineMachineChestPress)
        
        let declineMachineChestPress: Exercise = Exercise(name: "Decline Machine Bench Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(declineMachineChestPress)
        
        let cableChestPress: Exercise = Exercise(name: "Cable Chest Press", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(cableChestPress)
        
        let cableFlys: Exercise = Exercise(name: "Cable Flys", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(cableFlys)
        
        //BODYWEIGHT EXERCISES
        let dips: Exercise = Exercise(name: "Dips", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(dips)
        
        let pushups: Exercise = Exercise(name: "Pushups", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(pushups)

        let widePushups: Exercise = Exercise(name: "Wide Pushups", information: "Decide later")
        GlobalVariables.exerciseMap["Chest"]?.insert(widePushups)
        
        
        //BACK EXERCISES
        //Create chest exercise objects and store them inside the exercise map
        //BARBELL EXERCISES
        let deadlift: Exercise = Exercise(name: "Deadlift", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(deadlift)
        
        let sumoDeadlift: Exercise = Exercise(name: "Sumo Deadlift", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(sumoDeadlift)
        
        let deficitDeadlift: Exercise = Exercise(name: "Deficit Deadlift", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(deficitDeadlift)
        
        let blockDeadlift: Exercise = Exercise(name: "Block Deadlift", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(blockDeadlift)
        
        let romanianDeadlift: Exercise = Exercise(name: "Romanian Deadlift", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(romanianDeadlift)
        
        let snatchGripDeadlift: Exercise = Exercise(name: "Snatch Grip Deadlift", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(snatchGripDeadlift)
        
        let trapBarDeadlift: Exercise = Exercise(name: "Trap Bar Deadlift", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(trapBarDeadlift)
        
        let bentOverBarbellRow: Exercise = Exercise(name: "Bent Over Barbell Row", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(bentOverBarbellRow)
        
        let goodmornings: Exercise = Exercise(name: "Goodmornings", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(goodmornings)
        
        let tBarRow: Exercise = Exercise(name: "T Bar Row", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(tBarRow)
        
        //DUMBBELL EXERCISES
        let dumbbellDeadlift: Exercise = Exercise(name: "Dumbbell Deadlift", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(dumbbellDeadlift)
        
        let singleLegRomanianDeadlift: Exercise = Exercise(name: "Single Leg Romanian Deadlift", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(singleLegRomanianDeadlift)
        
        let singleArmDumbbellRow: Exercise = Exercise(name: "Single Arm Dumbbell Row", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(singleArmDumbbellRow)
        
        let alternatingDumbbellRow: Exercise = Exercise(name: "Alternating Dumbbell Row", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(alternatingDumbbellRow)
        
        //MACHINE EXERCISES
        let latPulldown: Exercise = Exercise(name: "Lat Pulldown", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(latPulldown)
        
        let wideGripPulldown: Exercise = Exercise(name: "Wide Grip Pulldown", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(wideGripPulldown)
        
        let cableRow: Exercise = Exercise(name: "Cable Row", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(cableRow)
        
        let facePulls: Exercise = Exercise(name: "Face Pulls", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(facePulls)
        
        let latPushdowns: Exercise = Exercise(name: "Lat Pushdowns", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(latPushdowns)
    
        //BODYWEIGHT EXERCISES
        let pullups: Exercise = Exercise(name: "Pullups", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(pullups)
        
        let closedGripPullups: Exercise = Exercise(name: "Closed Grip Pullups", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(closedGripPullups)
        
        let invertedRow: Exercise = Exercise(name: "Inverted Row", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(invertedRow)
        
        let hyperextensions: Exercise = Exercise(name: "Hyperextensions", information: "Decide later")
        GlobalVariables.exerciseMap["Back"]?.insert(hyperextensions)
        
        //LEG EXERCISES
        //Create chest exercise objects and store them inside the exercise map
        //BARBELL EXERCISES
        let backSquats: Exercise = Exercise(name: "Back Squats", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(backSquats)
        
        let frontSquats: Exercise = Exercise(name: "Front Squats", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(frontSquats)
        
        let sumoSquats: Exercise = Exercise(name: "Sumo Squats", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(sumoSquats)
        
        let barbellSplitSquat: Exercise = Exercise(name: "Barbell Split Squat", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(barbellSplitSquat)
        
        let boxSquat: Exercise = Exercise(name: "Box Squat", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(boxSquat)
        
        let zercherSquat: Exercise = Exercise(name: "Zercher Squat", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(zercherSquat)
        
        let speedSquat: Exercise = Exercise(name: "Speed Squat", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(speedSquat)
        
        //DUMBBELL EXERCISES
        let dumbbellSplitSquats: Exercise = Exercise(name: "Dumbbell Split Squats", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(dumbbellSplitSquats)
        
        let gobletSquat: Exercise = Exercise(name: "Goblet Squat", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(gobletSquat)
        
        
        //MACHINE EXERCISES
        let legPress: Exercise = Exercise(name: "Leg Press", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(legPress)
        
        let hackSquat: Exercise = Exercise(name: "Hack Squat", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(hackSquat)
        
        let legExtensions: Exercise = Exercise(name: "Leg Extension", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(legExtensions)
        
        let legCurl: Exercise = Exercise(name: "Leg Curl", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(legCurl)
        
        let seatedThighAbduction: Exercise = Exercise(name: "Seated Thigh Abduction", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(seatedThighAbduction)
        
        let seatedCalfRaise: Exercise = Exercise(name: "Seated Calf Raise", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(seatedCalfRaise)
        
        let standingCalfRaise: Exercise = Exercise(name: "Standing Calf Raise", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(standingCalfRaise)
        
        //BODYWEIGHT EXERCISES
        let walkingLunge: Exercise = Exercise(name: "Walking Lunge", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(walkingLunge)
        
        let gluteBridge: Exercise = Exercise(name: "Glute Brdige", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(gluteBridge)
        
        let jumpSquat: Exercise = Exercise(name: "Jump Squat", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(jumpSquat)
        
        let wallSit: Exercise = Exercise(name: "Wall Sit", information: "Decide later")
        GlobalVariables.exerciseMap["Legs"]?.insert(wallSit)
        
        //EXERCISES FROM OTHER MUSCLE GROUPS THAT APPLY TO LEGS
        GlobalVariables.exerciseMap["Legs"]?.insert(deadlift)
        GlobalVariables.exerciseMap["Legs"]?.insert(sumoDeadlift)
        GlobalVariables.exerciseMap["Legs"]?.insert(deficitDeadlift)
        GlobalVariables.exerciseMap["Legs"]?.insert(blockDeadlift)
        GlobalVariables.exerciseMap["Legs"]?.insert(romanianDeadlift)
        GlobalVariables.exerciseMap["Legs"]?.insert(snatchGripDeadlift)
        GlobalVariables.exerciseMap["Legs"]?.insert(trapBarDeadlift)
        GlobalVariables.exerciseMap["Legs"]?.insert(goodmornings)
    }
}

