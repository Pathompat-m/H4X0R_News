//
//  DetailView.swift
//  H4X0R News
//
//  Created by Pathompat Mekbenchapivat on 2/4/2567 BE.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - Properties
    
    let url: String? // URL of the detail view.
    
    // MARK: - Body
    
    var body: some View {
        WebView(urlString: url) // Display web view with the specified URL.
    }
}

// MARK: - Preview

// Provides a preview of the DetailView, allowing developers to visualize its appearance during development.
#Preview {
    DetailView(url: "") 
}
