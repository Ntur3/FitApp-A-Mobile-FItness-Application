//
//  workouts listitems.swift
//  FitnessApp
//
//  Created by Nolan Turin on 4/7/22.
//

import Foundation
import SwiftUI
import Combine

struct work: Identifiable {
    var id = String()
    var workoutitem = String()
    
    
   
}

class WorkoutStore: ObservableObject {
    @Published var workoutarray = [work]()
}
