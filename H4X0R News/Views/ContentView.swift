//
//  ContentView.swift
//  H4X0R News
//
//  Created by Pathompat Mekbenchapivat on 2/4/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    init() {
            coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = UIColor(
            red: 50.0 / 255.0,
            green: 191.0 / 255.0,
            blue: 81.0 / 255.0,
            alpha: 1.0
        )
            UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        }
    
    let coloredNavAppearance = UINavigationBarAppearance()
    
    // MARK: - Properties
    
    @ObservedObject var networkManager = NetworkManager() // Observed object for managing network requests.
    
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points)) // Display post points.
                            .foregroundStyle(.white)
                        Text(post.title) // Display post title.
                            .foregroundStyle(.white)
                    }
                }
                .listRowBackground(Color.black)
                .listRowSeparatorTint(.white)
            }
            .navigationTitle("H4X0R NEWS") // Set navigation title.
            .scrollContentBackground(.hidden)
            .background(.linearGradient(colors: [.green, .black], startPoint: .top, endPoint: .bottom))
        }
        .onAppear{
            networkManager.fetchData() // Fetch data when the view appears.
        }
        
    }
}

// MARK: - Preview

// Provides a preview of the ContentView, allowing developers to visualize its appearance during development.
#Preview {
    ContentView()
}


//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
