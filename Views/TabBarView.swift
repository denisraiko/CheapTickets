//
//  TabBarView.swift
//  CheapTickets
//
//  Created by Denis Raiko on 20.06.24.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection = 0
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.black
        
        UITabBar.appearance().standardAppearance = appearance
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
    
    var body: some View {
        TabView(selection: $selection) {
            MainView()
                .tabItem {
                    Label("Авиабилеты", systemImage: "airplane")
                }
                .tag(0)
            
            PlaceholderView(text: "Отели")
                .tabItem {
                    Label("Отели", systemImage: "bed.double.fill")
                }
                .tag(1)
            
            PlaceholderView(text: "Короче")
                .tabItem {
                    Label("Короче", systemImage: "ellipsis")
                }
                .tag(2)
            
            PlaceholderView(text: "Подписки")
                .tabItem {
                    Label("Подписки", systemImage: "bookmark.fill")
                }
                .tag(3)
            
            PlaceholderView(text: "Профиль")
                .tabItem {
                    Label("Профиль", systemImage: "person.crop.circle")
                }
                .tag(4)
        }
    }
}

struct FlightsView: View {
    var body: some View {
        Text("Авиабилеты")
            .font(.largeTitle)
            .padding()
    }
}

struct PlaceholderView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
    }
}
#Preview {
    TabBarView()
}

