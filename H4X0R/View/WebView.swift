//
//  WebView.swift
//  H4X0R
//
//  Created by Philip Yu on 4/11/20.
//  Copyright © 2020 Philip Yu. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    // MARK: - Properties
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        
        return WKWebView()
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                
                uiView.load(request)
            }
        }
        
    }
    
}
