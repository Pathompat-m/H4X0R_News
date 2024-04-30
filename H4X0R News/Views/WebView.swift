//
//  WebView.swift
//  H4X0R News
//
//  Created by Pathompat Mekbenchapivat on 2/4/2567 BE.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    // MARK: - Properties
    
    let urlString: String? // URL string to load in the web view.
    
    // MARK: - Methods
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView() // Initialize and return a WKWebView.
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request) // Load the URL request in the web view.
            }
        }
    }
    
}
