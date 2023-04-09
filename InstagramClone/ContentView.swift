//
//  ContentView.swift
//  InstagramClone
//
//  Created by Vicky Irwanto on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
       
        VStack(spacing:0.0){
            HStack{
                HStack(spacing: 0.0){
                    Image("instagram")
                        .resizable()
                        .frame(width: 100, height: 50)
                    Image(systemName: "chevron.down")
                        .font(.system(size: 11))
                        .padding(.leading, 5)
                        .padding(.top, 4)
                }
                Spacer()
                HStack{
                    Image(systemName: "heart")
                        .font(.system(size: 20))
                    Image(systemName: "ellipsis.message")
                        .font(.system(size: 18))

                }
            }
            .padding(.horizontal, 15)
            TabView(selection: $selection){
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 0.0){
                        HStack{
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    ZStack{
                                        Image("gw")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                        Circle()
                                            .strokeBorder(LinearGradient(gradient: Gradient(colors: [.red, .green, .blue]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                        ZStack{
                                            Circle()
                                                .foregroundColor(Color.blue)
                                            Image(systemName: "plus")
                                                .font(.system(size: 12))
                                                .foregroundColor(Color.white)
                                        }
                                        .frame(width: 20, height: 20)
                                        .offset(x: 30, y: 20)
                                    }
                                    .frame(width: 80)
                                    
                                    
                                    ForEach(0..<4){
                                        _ in
                                        
                                        HStack{
                                            ZStack{
                                                Image("gw")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 80, height: 80)
                                                    .clipShape(Circle())
                                                Circle()
                                                    .strokeBorder(LinearGradient(gradient: Gradient(colors: [.red, .green, .blue]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                            }
                                            .frame(width: 80)
                                           
                                                
                                        }
                                    }
                                    
                                }
                                
                                

                            }
                            .padding(.leading, 5)

                        }
                        
                        ForEach(0..<10){
                            _ in
                            VStack(spacing: 0.0){
                                HStack(spacing:0.0){
                                    ZStack{
                                        Image("gw")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 50, height: 50)
                                            .clipShape(Circle())
                                        Circle()
                                            .strokeBorder(LinearGradient(gradient: Gradient(colors: [.red, .green, .blue]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                    }
                                    .frame(width: 50)
                                    .padding(.leading, 5)
                                    Text("Vickyir.jr")
                                        .font(.system(size: 15, weight: .semibold, design: .default))
                                        .padding(.leading, 8)
                                    Spacer()
                                    HStack(spacing:2){
                                        Circle()
                                            .frame(width: 5, height: 5)
                                        Circle()
                                            .frame(width: 5, height: 5)
                                        Circle()
                                            .frame(width: 5, height: 5)
                                    }
                                    .padding(.trailing, 5)
                                   
                                }
                                .padding(.bottom, 8)
                                
                                VStack(alignment: .leading){
                                    Image("post")
                                        .resizable()
                                        .scaledToFill()
                                    HStack{
                                        HStack{
                                            Image(systemName: "suit.heart.fill")
                                                .font(.system(size: 25))
                                                .foregroundColor(Color.red)
                                            Image(systemName: "message")
                                                .font(.system(size: 23))
                                                .foregroundColor(Color.black)
                                            Image(systemName: "paperplane")
                                                .font(.system(size: 23))

                                        }
                                        
                                        Spacer()
                                        Image(systemName: "bookmark")
                                            .font(.system(size: 23))
                                    }
                                    .padding(.top, 1)
                                    .padding(.horizontal, 12)
                                    
                                    VStack(alignment: .leading,spacing: 5){
                                        HStack{
                                            Text("69.939 likes")
                                        }
                                        .padding(.leading, 15)
                                        .padding(.top, 1)
                                        .font(.system(size: 14, weight: .semibold))
                                        HStack{
                                            Text("Vickyir.jr")
                                                .font(.system(size: 14, weight: .semibold))
                                                .padding(.leading, 15)
                                            Text("💙")
                                        }
                                        Text("View all 4 Comments")
                                            .font(.system(size: 14, weight: .semibold))
                                            .padding(.leading, 15)
                                            .foregroundColor(Color.gray)
                                    }
                                   
                                    
                                   
                                    
                                }
                                
                                
                                
                            }
                            .padding(.top, 15)
                            .padding(.bottom, 5)
                        }
                        
                        
                        
                    }
                    
                }
                
                
                    .tabItem{
                        Image(systemName: "homekit")
                    }
                    .tag(0)
                Text("Explore")
                    .tabItem{
                        Image(systemName: "magnifyingglass")
                    }
                    .tag(1)
                Text("Post")
                    .tabItem{
                        Image(systemName: "plus.app")
                    }
                    .tag(2)
                Text("Reels")
                    .tabItem{
                        Image(systemName: "play.square.stack")
                    }
                    .tag(3)
                Text("Profile")
                    .tabItem{
                        Image(systemName: "person.circle")
                    }
                    .tag(4)
            }
            .accentColor(Color.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
