//
//  ContentView.swift
//  FitnessApp
//
//  Created by Nolan Turin on 1/25/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var email = ""
        @State private var password = ""
        
        var body: some View {
            NavigationView  {
                
                    
                    VStack{
                        Spacer()
                        Text("FitApp")
                            .font(.system(size: 50, weight: .semibold))
                            .foregroundColor(.white)
                            .padding()
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.gray)
                                .frame(width: 8, height: 8)
                                .padding(.trailing)
                            
                            TextField("Email", text:$email)
                                .font(.system(size: 25))
                                
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .frame(width: 310, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.bottom)
                        
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.gray)
                                .frame(width: 8, height: 8)
                                .padding(.trailing)
                            
                            SecureField("Password", text:$password)
                                .font(.system(size: 25))
                        }
                        .frame(width: 280, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .padding(.bottom)
                        
                        ZStack {
                            Button(action:{}){
                            NavigationLink(destination: LoginView(), label: {
                               
                                    Text("Log In")
                                        .padding(.trailing)
                                        .padding(.leading)
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                        .background(Color.red)
                                        .frame(maxWidth: 300)
                                        .cornerRadius(8)
                                        .padding(10)
                                        .cornerRadius(8)

                                })
                                .frame(maxWidth: .infinity)
                                
                                
                            }
                            .frame(width: 500, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            
                        }
                        Spacer ()
                    }
                    .background(Image("login")
                        .resizable()
                        .aspectRatio(contentMode: .fill))
                    .edgesIgnoringSafeArea(.all)
                
                }
                
            }
                
                   
    //                .padding(.bottom, 20)
    //                Image("dumbell")
    //                    .resizable()
    //                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    //                    .onTapGesture {
    //                        UIApplication.shared.endEditing()
    //                    }
                        
                        
    //                Spacer()
        }
    

            
//}
//            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
//            .textFieldStyle(RoundedBorderTextFieldStyle())
//            .padding()
//
        




            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            

            }

