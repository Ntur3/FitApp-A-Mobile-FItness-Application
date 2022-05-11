//
//  Legs.swift
//  FitnessApp
//
//  Created by Nolan Turin on 4/4/22.
//

import SwiftUI

struct Workoutslegs: Identifiable{
    let id: Int
    
    let excercise: String
    let setsreps: String
    let imageName: String
}
    
struct Legs: View {
        @State var workoutListlegs = [
                    //Workout 1
                    Workouts(id:1, excercise: "Barbell Backsquat", setsreps:"4x5", imageName:"bbbacksquat"),
                    //Workout 2
                    Workouts(id:2, excercise: "Romanian Deadlift", setsreps:"3x12", imageName:"RDL"),
                    //Workout 3
                    Workouts(id:3, excercise: "Bulgarian Split Squats", setsreps:"4x10", imageName: "splitsquat"),
                    //Workout 4
                    Workouts(id:4, excercise: "Leg Press", setsreps:"2x20", imageName: "legpress"),
                    //Workout 5
                    Workouts(id:5, excercise: "Hamstring Curls", setsreps:"4x12", imageName: "hamstringcurls"),
                    //Workout 6
                    Workouts(id:6, excercise: "Seated Leg Extensions", setsreps:"4x12", imageName: "Legextension"),
                    //Workout 7
                    Workouts(id:7, excercise: "Smith Machine Calf Raises", setsreps:"4x12", imageName: "calraises"),
            ]
    
    init(){
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0.1927102208, green: 0.282566458, blue: 0.3712197244, alpha: 1)
        UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0.1927102208, green: 0.282566458, blue: 0.3712197244, alpha: 1)
        UITableView.appearance().tableFooterView = UIView()

    }


    var body: some View {
        NavigationView{
            List(workoutListlegs) { workouts in
                
                
                Image(workouts.imageName)
                    .resizable()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth:3))
                    .frame(width: 75, height:75)

                
                HStack {
                    
                    Text(workouts.excercise).font(.title2)
                        
                    Spacer()
                    Text(workouts.setsreps).font(.title2).padding(.leading)
                    
                }
                
                
                .font(.system(size: 25))
            }
            .listStyle(InsetGroupedListStyle())
            .listRowBackground(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
        
        
        }
        
        
        .navigationBarTitle(Text("Legs Workout")
                                .foregroundColor(Color.white))
        
        
    }
    
}
    
struct Legs_Previews: PreviewProvider {
    static var previews: some View {
        Legs()
    }
}
