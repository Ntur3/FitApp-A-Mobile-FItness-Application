//
//  Push.swift
//  FitnessApp
//
//  Created by Nolan Turin on 4/4/22.
//

import SwiftUI
import Combine

struct Workoutspush: Identifiable{
    let id: Int
    
    let excercise: String
    let setsreps: String
    let imageName: String
}

struct Push: View {
    @State var workoutListpush = [
        //Workout 1
        Workouts(id:1, excercise: "Barbell Bench", setsreps:"4x5", imageName:"bench"),
        //Workout 2
        Workouts(id:2, excercise: "Incline Dumbell Bench", setsreps:"3x12", imageName:"incline"),
        //Workout 3
        Workouts(id:3, excercise: "Cable Tricep Pushdowns", setsreps:"4x12", imageName: "pushdown"),
        //Workout 4
        Workouts(id:4, excercise: "Close Grip Bench", setsreps:"4x12", imageName: "close"),
        //Workout 5
        Workouts(id:5, excercise: "Cable Chest Flyes", setsreps:"4x12", imageName: "fly"),
        //Workout 6
        Workouts(id:6, excercise: "Dips", setsreps:"4x12", imageName: "dips"),
        //Workout 7
        Workouts(id:7, excercise: "Push-Ups", setsreps: "100 reps", imageName: "pushup"),
    ]
    
    init(){
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0.1927102208, green: 0.282566458, blue: 0.3712197244, alpha: 1)
        UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0.1927102208, green: 0.282566458, blue: 0.3712197244, alpha: 1)
        UITableView.appearance().tableFooterView = UIView()
    }
    
    
    var body: some View {
        NavigationView{
            List(workoutListpush) { workouts in
                
                
                Image(workouts.imageName)
                    .resizable()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth:3))
                    .frame(width: 75, height:75)
                    .clipped()
                
                HStack {
                    
                    Text(workouts.excercise).font(.title2)
                        
                    Spacer()
                    Text(workouts.setsreps).font(.title2).padding(.leading)
                    
                }
                
                
                .font(.system(size: 25))
            }
            .listStyle(InsetGroupedListStyle())
            .listRowBackground(Color(#colorLiteral(red: 0.1927102208, green: 0.282566458, blue: 0.3712197244, alpha: 1)))
        
        }
        
        
        .navigationBarTitle(Text("Push Workout"))
        
    }
    
}


struct Push_Previews: PreviewProvider {
    static var previews: some View {
        Push()
    }
}
