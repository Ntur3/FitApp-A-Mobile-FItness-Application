//
//  Todays.swift
//  FitnessApp
//
//  Created by Nolan Turin on 4/11/22.
//

import SwiftUI

struct Workoutstodays: Identifiable{
    let id: Int
    
    let excercise: String
    let setsreps: String
    let imageName: String
}

struct Todays: View {
        @State var workoutListtodays = [
                    //Workout 1
                    Workouts(id:1, excercise: "Deadlift", setsreps:"4x8", imageName:"deads"),
                    //Workout 2
                    Workouts(id:2, excercise: "Pullups", setsreps:"4x10", imageName:"pullup"),
                    //Workout 3
                    Workouts(id:3, excercise: "Rear Delt Flies", setsreps:"4x12", imageName: "rear delt"),
                    //Workout 4
                    Workouts(id:4, excercise: "Forearm Curls", setsreps:"3x25", imageName: "forearm"),
                    //Workout 5
                    Workouts(id:5, excercise: "Arnold Press", setsreps:"4x12", imageName: "arnold"),
                    //Workout 6
                    Workouts(id:6, excercise: "Crunches", setsreps:"4x20", imageName: "situps"),
            ]
    
    init(){
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0.1927102208, green: 0.282566458, blue: 0.3712197244, alpha: 1)
        UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0.1927102208, green: 0.282566458, blue: 0.3712197244, alpha: 1)
        UITableView.appearance().tableFooterView = UIView()

    }

    var body: some View {
        NavigationView{
            List(workoutListtodays) { workouts in
                
                
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
            .listRowBackground(Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)))
        
        }
        
        
        .navigationBarTitle(Text("Todays Workout"))
        
    }
    
}
    
struct Todays_Previews: PreviewProvider {
    static var previews: some View {
        Todays()
    }
}
