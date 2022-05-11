//
//  Pullworkouts.swift
//  FitnessApp
//
//  Created by Nolan Turin on 4/6/22.
//

import SwiftUI
import Combine

struct Workouts: Identifiable{
    let id: Int
    
    let excercise: String
    let setsreps: String
    let imageName: String
}

struct Pullworkouts: View {
    @State var workoutList = [
        //Workout 1
                Workouts(id:1, excercise: "Barbell Bent Over Row", setsreps:"4x12", imageName:"bentoverrow"),
                //Workout 2
                Workouts(id:2, excercise: "Dumbell Bicep Curl", setsreps:"3x12", imageName:"bicepcurl"),
                //Workout 3
                Workouts(id:3, excercise: "Single Arm Dumbell Row", setsreps:"4x12", imageName: "dumbellrow"),
                //Workout 4
                Workouts(id:4, excercise: "Lat Pulldowns", setsreps:"4x12", imageName: "latpulldown"),
                //Workout 5
                Workouts(id:5, excercise: "EZ Bar Curls", setsreps:"4x12", imageName: "EZbar"),
                //Workout 6
                Workouts(id:6, excercise: "Seated Cable", setsreps:"4x12", imageName: "seatedrow"),
    ]
    
    init(){
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0.1927102208, green: 0.282566458, blue: 0.3712197244, alpha: 1)
        UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0.1927102208, green: 0.282566458, blue: 0.3712197244, alpha: 1)
        UITableView.appearance().tableFooterView = UIView()
    }
    
    
    var body: some View {
        NavigationView{
            List(workoutList) { workouts in
                
                
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
        
        
        .navigationBarTitle(Text("Pull Workout"))
        
    }
    
}

struct Pullworkouts_Previews: PreviewProvider {
    static var previews: some View {
        Pullworkouts()
    }
}

