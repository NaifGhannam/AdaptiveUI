//
//  ContentView.swift
//  AnimatedUI
//
//  Created by Mac on 13/09/1446 AH.
//
import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    @Namespace private var animationNamespace
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(namespace: animationNamespace)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(1)
        }
    }
}
